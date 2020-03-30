Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8835199A1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yk+qlwQjLFSa09qV+o/39ACVTAVeMtIYsr0vV/4uUgA=; b=TdY+qz9/9/97N7
	IdlCqCd2lxuqQuucL16QbS+DWNXJSB6QMSyi3W0eDIQaSNqbTT5HjgJ8rg1rhehvvee2NWdsgDUui
	wzRdVAKXdCAPasyet/Xe7ZX1D2Ng2lhSGm9pyOtoRfioeWNCLPJYxT/TLDJ3xWaOK+jvR/evwKKhl
	dRRDEttBNcoh4PNJtrbttEgrqcNG4fM7Po/Rp4IODgx5GAxgjT18AOabIixupGVo961rq/dAoaZPV
	3pdcb3OGMZ5MevfzaAZ6ipBBhS0fu/3UQBQSJdK9N0F0rOXhjc4umrRyy8s5raTtlM1MC1Q5Au3Sw
	cg/SYhHiaoGVo7kYxYUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ5g-0004dM-Bk; Tue, 31 Mar 2020 15:46:12 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ4C-0001IZ-Gv
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:44:42 +0000
Received: by mail-oi1-x242.google.com with SMTP id d63so19293226oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xqzZgHhphmaoZ/y+7rSQwVUstgwu8a6GEUpOyEmntas=;
 b=VghPapfNnEYGwVLfxwp7LMRlLUHxH9v5pBkWzBH0W+iFu/++/NeT+Vdezvg7zpuhZx
 ns9n7XpLCcoqiIpAgdbxOa8dhH3Amd5AtJ9kMrlQQ+6cbAVEfuaNh33pQUBRvLXSOLj9
 0qIcIorZ14dr3B2V8nVIgk9GbT6QGXRIbkB+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xqzZgHhphmaoZ/y+7rSQwVUstgwu8a6GEUpOyEmntas=;
 b=D8R+ih5fWRmFDVGYfwKcF/Dv+7nnDuHKa42+donj20wHnUtvfzRaYeprsAkrETa1SV
 xkyIN08MY7wZrxNY1YmzjUmRFUqxLgRR8M2qKtAdP3lelX5b4H9B0EsfPZrS1AxJNzXF
 714P40tMgaz1suuoYn/pf0/+0YOJcDHSxe8f9GPqOojXQPY3rvVC2+GRBrrGHyrfr7KH
 dlhhpAP+Xa0EecdiRwkselVJIHHwGobZOm+j95ASZFZX4ON08ZqlYNaaNjqlzh1FrfVP
 wbOXbrbc7nCzmLn95sm9CypsYzBIZtNNljcSKcoFbLZFUuRLYoZsGpOJ1uyRvz0q1OdT
 Qebg==
X-Gm-Message-State: ANhLgQ1zd09VbpUAf1C8JO2P9b1oN9HK6HoxhiR5vsoA77LyxZv7vBsA
 WWL86V0Ib+J60NuHB0KU9omrWnxCafA=
X-Google-Smtp-Source: APiQypKaKC+eBnaiz+c6JPfAj4iUG3nktFhPQ4ow7zS/3R/2CJWS3U+ESrj4bjb7JY9JwezUOcWS2Q==
X-Received: by 2002:a17:90a:ac18:: with SMTP id
 o24mr4249495pjq.62.1585663522595; 
 Tue, 31 Mar 2020 07:05:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z7sm2060833pju.37.2020.03.31.07.05.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 07:05:21 -0700 (PDT)
Date: Mon, 30 Mar 2020 11:06:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/5] arm64: bti: Support building kernel C code using BTI
Message-ID: <202003301105.37A7CE7@keescook>
References: <20200327192107.18394-1-broonie@kernel.org>
 <20200327192107.18394-2-broonie@kernel.org>
 <202003281348.B5ECC9DB2@keescook>
 <20200330113300.GD4792@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330113300.GD4792@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084440_602294_A638165A 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 12:33:00PM +0100, Mark Brown wrote:
> I feel better about adding the extra dependency than feeding an option
> to the compiler that looks wrong like -mbranch-protection=+bti (more
> BTI!) but ultimately I don't have strong feelings either way so whatever
> Catalin and Will prefer.

Cool cool. If I end up with a use-case for stand-alone BTI I'll take the
responsibility to sort out the future patches to support it. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
