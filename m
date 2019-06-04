Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED9A34333
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXmTbSCzIj+FG0D8+LKb02D9gfrFrTs64CWNTHmxkGo=; b=fA1OmO026qU9Sr
	dFqYwBlf6LQbq4e3K8vjKHOZN3T1WNYexhIMLNQh5z8LIwWuuNmHJMBZwa+ZeGENUD9ItoUXcSTJz
	MAFYbDfKYUvvLrzVHaeIISUMkgHJoBWn88fUW+2/gSn0kCcQOA0fN2C2z50a9O6cFkgxc5/Sijlrc
	+xhP6Fc8EJ4BjQ0FQrZOgVrDkMbp/NmV2v79VxmpyiNKYTzoGjgusgwbGELoernE+NbZYFySxvCcA
	2g+OL4YUSwfVkDMCae2SVa6ZltUr0+M/kIZmP5+xBxCfhbtMYmUvqt3HBR/3VFEuDH/J31oSUoW/r
	NjQZ0hV/adhyMSi3MnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5nY-0006V3-3v; Tue, 04 Jun 2019 09:32:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5nR-0006Uk-Hm
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:31:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so327843pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 02:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MimY8E6RzMP+Xm09/RStVcP0kJblyDIRLMNiKjGKR1U=;
 b=jxJdMBDIJRCbNIZuMnUELhdpEn41VADNgzlplcmAXJynP+m5d5YB4HbguZiv5hotqh
 l9w0GY8FrukKhQunBoGC3tAk0TlFur1DY+UTBOFMtEibcehQBzR0/478UnelnBdK/V6A
 civ0aWuPhTj2Lwrl6dlU8QQhiKIrTdiBTJx5LpmBsvNbpvea8RzLiWd+RM62SI1//lOZ
 yUk4JVITz3zKEWBmVqO8Y91afvJI7gLRH7sNlStVxUs/iSwo5FYEqRV3GrEhSEkLmf7U
 pI79hFjf/o2dlic8f0PYj/PwMYEMLQwYNb+R9/B1m1R3PcNiX5lysTh/prELjaTBLH7G
 7OvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MimY8E6RzMP+Xm09/RStVcP0kJblyDIRLMNiKjGKR1U=;
 b=TkFfO+JihbQrTqsljDAkvAcXH4hyORCGwcDl+05d3AzUiO464ObSwkmnCGaTJwUKLT
 UuARd70dAhRILbYIFQzQ8NA2euX1HWkcBk1T+jTwnqTXaG3gzW8FEJ8YvZQmEMoS+x59
 AQYhYPhAVIhSCmb2w0ptrHVbjlM2IC3uYJcHrtyZbpbHIb3aLyvegJkZwXZK7VGN4w8i
 ergdcE2aVPsEJ8V3hShz4otTP/rqzLJjarDTdcOSIwiwlrT7RkiYCN7XvJGP+6gdgTl4
 QosptAxLbEUciJYdeZ2Amp6llSGaHKAnktPFfydPF21m3OPR2GawC+q//Dw8R/lVo0Cx
 EXww==
X-Gm-Message-State: APjAAAXDUv9w+w1DG9RObcnTYKTzWDWKScH8//h4qpmAbxczr/KChCIq
 YIIGEUKQvJucMwlRm21w4GOdNA==
X-Google-Smtp-Source: APXvYqzkBCd15WCdDavN2+OthVD2LAb86dzXlH0Ye+ZreCxe0UdK/8MuhKMRME3oQVp6Fs1Cw+s2oQ==
X-Received: by 2002:aa7:92da:: with SMTP id k26mr36714866pfa.70.1559640716355; 
 Tue, 04 Jun 2019 02:31:56 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id b16sm17600287pfd.12.2019.06.04.02.31.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 02:31:55 -0700 (PDT)
Date: Tue, 4 Jun 2019 15:01:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] KVM: arm64: Drop 'const' from argument of vq_present()
Message-ID: <20190604093153.2pzv55knl6axugrv@vireshk-i7>
References: <699121e5c938c6f4b7b14a7e2648fa15af590a4a.1559623368.git.viresh.kumar@linaro.org>
 <20190604084349.prnnvjvjaeuhsmgs@mbp>
 <20190604085545.hsmxfqkpt2cbrhtw@vireshk-i7>
 <20190604092639.GS28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604092639.GS28398@e103592.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_023157_728324_39C2330E 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-06-19, 10:26, Dave Martin wrote:
> I'm in two minds about whether this is worth fixing, but if you want to
> post a patch to remove the extra const (or convert vq_present() to a
> macro), I'll take a look at it.

This patch already does what you are asking for (remove the extra
const), isn't it ?

I looked at my textbook (The C programming Language, By Brian W.
Kernighan and Dennis M. Ritchie.) and it says:

"
The const declaration can also be used with array arguments, to
indicate that the function does not change that array:

int strlen(const char[]);
"

and so this patch isn't necessary for sure.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
