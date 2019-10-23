Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A56A9E1B29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LIvwB/bJLboZT8J3jPBG6qALWgOALh0q8fHkdap3XM=; b=BFMcKWoG2BWSWz
	k9kL/Dy87zVWme9wJEQL+hz0Rp3fV4qoTPxPA+ez2GwNM+51PVoDURGs6T09AUxSMbaiEwCo47h/T
	Euh05ycsGFTd5iq+fCw1RWG2lMX0Ng1akWxpEf7SL0XIZpdd4s/rjECoNNJ4EYJHxq8lbDnAeol59
	nqq0QKzf5k5f7hoiMgsLv/92usRamO/Oa2kRg32RqEVlrZJ2ErydWFyb64qg/sRw6p7cqR6d01Lul
	GGAObFNzg8Yspb8H7jWbEzoqsyfRPKFirIgkW4/QnQ2ZQAiG4qTYWh58h3BxKB5Bq7KVzihLi0Ptv
	D7VyV0hpbH71t+6D6pSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNG2f-0001aO-Ma; Wed, 23 Oct 2019 12:47:09 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNG2O-0001Zz-Fv
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:46:53 +0000
Received: by mail-ed1-f68.google.com with SMTP id l25so4398772edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:46:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A4xxnHET7dHUr6+FUOOYWQtG2S2xuT97YaAB9hJ4Qfs=;
 b=uOrmL1E1bXl/j16pIqmrkXj6GRYTBJ5XE3fmtWmglFpmyWx2rLRyqbs88XkPdJuzCL
 8zzaB72nj7WWxlLhjaZYG+4QR807DjjdtOfbQT5TVtc9QW8wgnqxUeB5QNEc4PKJv1op
 vJu4FpCzyBkcGf5FoGJ7F3/IBYjE5G+QwVpAmJnkQz3J8kjEzj4sz4I468ITC66IZ/0p
 7WLWvEF/Gge1n+x7Ph6ngHIAwCBVj8Nu7Kl6cswSMf53Dqjbn/0aKd4fDR9yqGSeEDky
 fM54K9hHr8TcZx9CJdqh524yZ6tekKtRLIyVxq2j+FoLKgjJzSdE0kO2t0kYea70S74V
 f61w==
X-Gm-Message-State: APjAAAVJKoYeQFFAn6qzIG9hS03N0NhFcm6unvirawrgdVk/V6nbXnRN
 8BkQjSDW+q4GjYpbWDIMtF0=
X-Google-Smtp-Source: APXvYqyIj+x4DPnQ8/wfFlKsi+/SJbuj1ZkWeMFOp0eV28T9/zZeeEOdXwSG8Og+Eu/s2dSay0QajQ==
X-Received: by 2002:a50:f683:: with SMTP id d3mr15725304edn.70.1571834810704; 
 Wed, 23 Oct 2019 05:46:50 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id d8sm279944edb.18.2019.10.23.05.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 05:46:50 -0700 (PDT)
Date: Wed, 23 Oct 2019 14:46:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 03/36] usb: gadget: s3c: use platform resources
Message-ID: <20191023124648.GE11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-3-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-3-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_054652_533343_B23B9F03 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:47PM +0200, Arnd Bergmann wrote:
> The resources are correctly initialized, so just use them
> instead of relying on hardcoded data from platform headers.

Generic comment to all patches - you seem to break commit msg lines
slightly too early. In certain cases it makes them unnecessarily longer.
Maybe your editor has to be fixed to wrap at 75 column.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
