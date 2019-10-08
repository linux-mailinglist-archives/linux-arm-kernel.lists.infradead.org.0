Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA58D0229
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 22:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9hSjodRVTq2GNotgI9Ig1alNciJsLaa/OTn4cIAj98=; b=qP0pPhpi31SNyH
	NtfO7AIQgRydmD7MS5REuMVdCEVBFEvusM+v8yerBmorVcabsZCFgP5P8LdYb8eGOkkMZ7FPyW0W+
	+9WE7THhPUj58sdWlBf57URKehWAJrDFy/688x8g+tIhj6e78h6qZeiPVFBZoTHqfQDgsj3qY28lU
	TLsfXXu5E1N98OIxQNExHJwuYtRbazQe/XLi9vtsstqp3JWBzBdjP9W4tclumytJIEPhHI2xPMaEQ
	a52Myc5Nr+VYR/CrhLQrGqf6Hq4S0HUjiP2T0rKlyx9sKeblhE4ZedFrHyvBqNfP6+tIhKAGO5lBD
	mAD5BGfz81E1NQOH2wKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHw9T-00005j-Id; Tue, 08 Oct 2019 20:32:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHw9M-000056-BN
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 20:32:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id x127so54737pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 13:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eG3/KTcN+l0J8/6h6CFjDe7V6XOLu3qvlhIP2AFfrys=;
 b=to94oEFRu7pxgY2G1Xez6EtBwR0f3yzChiGgys5tcUAprpjiFizEtLFTEfBhUswbwS
 +b6TW6lVGXl4mLAI4N3auzBq0yZMZCqptNh/Hrja7n2IfTO9vb/N15/IR8y0cnVkil3G
 XHH3y7a5zxQHC3wZYFFvm7Pqh5HXET1swlIRVWpE9Sywk5HGoA2nEoT+d/8bSrhOPgkA
 icePHEWyx6ekqLhZHjFp3fBjzhyj7hLulxxnd8XhpqLUycijtMwDhnxpgAq67FKnWR2y
 vdW6JNefJLtAVnRwzX/hGl9q6hjmdYUGPNbc/S+XjVI42xIfKYKlpbh7fzA40E8l+ekx
 UnTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eG3/KTcN+l0J8/6h6CFjDe7V6XOLu3qvlhIP2AFfrys=;
 b=m6skAGNPMuXF9ruC1xb0gLuH7JVI7Kkqr+ZB6nAxa3tfY9LHh4cpwEIZukNHl43EAy
 bKmRoaFsLrxgYtfqmaqQ/FCRKD0Cvv2oFnT8xUOjLS8AU3Io2y78q/ZnVo3rfx331i8p
 uOXkj0x2f+0LLjkxijQ8ShdnXst0wCUEbFko0+7piZF3LGSVndtzeCTC5LambVqTRiAj
 ZHfqiedi8JKQV5df60CRhggcNtYN82lQSCinPt1LeVLQFbzTg2NXxha/gO0nkteR60pi
 M32ooldOxvaSkYzIsGX8OVrvrUyXMnO/Ni66htN+FjRCddq4WnKqypyhzfcs+aA6J0KI
 SLmg==
X-Gm-Message-State: APjAAAWRyN5r8PY5NCTynovSBPHnZiAo6Bq1M/uLXh6iL0KY+CuyU8Gr
 ljQciEcKa60xScTBWn4vqudAuw==
X-Google-Smtp-Source: APXvYqzuXMuOJlcRChpjsyL5D5qPR+4R8/wPvf3J5IUiMHTYlcl02d8LMjqeowAKe6J+zFd5NRArUw==
X-Received: by 2002:a62:e21a:: with SMTP id a26mr6636688pfi.80.1570566723059; 
 Tue, 08 Oct 2019 13:32:03 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id r18sm16766pfc.3.2019.10.08.13.32.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 13:32:02 -0700 (PDT)
Date: Tue, 8 Oct 2019 13:31:57 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH 3/5] i2c: aspeed: fix master pending state handling
Message-ID: <20191008203157.GA184092@google.com>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_133204_414666_F048DB67 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Tao Ren <taoren@fb.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 04:13:11PM -0700, Jae Hyun Yoo wrote:
> In case of master pending state, it should not trigger the master
> command because this H/W is sharing the same data buffer for slave
> and master operations, so this commit fixes the issue with making
> the master command triggering happen when the state goes to active
> state.

nit: Makes sense, but can you explain what might happen without your
change?

> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
