Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D337D3C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 05:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6VWLVB2l+nWb3BtuZ2P7TJnyDEXLmyyvlF0SJSE4f4=; b=XhRzpI/WptF4iR
	jKn66nj7e0uAyLB1ioQg5Tab8jskROYjuj91JjsHbvJlakLrJtneQb3Na8tL2KPaa+kDC6RmqLxnR
	A/kyeNE+6td/rIPu6xb/gzuC6PNt2pCgQ9l/75qywYBMde4H75udzo2fg2FbO+8t0H7axwV0Ac/5Y
	vtn1c2hVWxirz9gV7fRYRgZ/vrwMud0TjD2jbTXN88mPvgr6rHUvlfroep2V+SSj4F5b4DAR95Cqp
	pkamBXhV+yEWu5OwkkZ6eyo943iMXX6/hAKpBKASiC50mfa/qlIbpKDS7SHDi2mq8cDZix7H7K/KW
	ts0soaweXQ4YNBG402ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht1vK-0005GR-T0; Thu, 01 Aug 2019 03:38:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht1vD-0005G8-Kr
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 03:38:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id g2so33150793pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 20:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HUAGFQAnsK0ltuLrxJcYqZcxSumtJzlQvJKJd2VykRE=;
 b=f2+FeexuMHIVFz7J1KgaYN2PSAEsfxAGCZHQtPsRXqy8nkBFa/1JRk4lUuh5Sh8HwM
 KTrXZoJfxbnVIbK+2dKF925fE0bOUCbp4T8VHQbnpiyHAvkROzJCzzsTkomdVsGJzZy2
 JbrfU17ZhC6hw3Z/LsHKMav+48o1RMiyFCem90Ax9AAz24Hue2iaNDZbvQFv7/i1YWCg
 ZKtOexqIW6AYvMRd9CfoWkMuBOeZqZRrHXN7txBwnGWQawE2PMRZPp2eQ8l5ON/Rzuhf
 8oQGRRCLBntWU5nVUac9FGgNmw3HIBb4jJY9KRs/vP/OV0UHizBz9XPoUVYsR5z65nMa
 uJ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HUAGFQAnsK0ltuLrxJcYqZcxSumtJzlQvJKJd2VykRE=;
 b=De8n2s3E59M2CPpQgZGNZ4mo40/cTFpWI957RVqHk50i2opAJckgoB7C/GXh4xNWfp
 CpyIQU54BrAN/EwqegNPLhCnUi4r0ci0jvIT8S7pX/iH5TBmfYxRGlwHlm0j/mQkOduL
 zq7HSobP3cyT1BF6qcBz8Z1tCmeSkiRhDU+buH6I28u+Vpfyp+aXmziOGfoMyPWTsz9+
 2E8/RC8i4Thv7dhoGZw9j2xj/sElx9xRxQAijT2EZMCrqRkV/+Vbiphx0FbKe/JDVbrI
 ltEFVwuAiw9JdhGUcW9OMdcvTl1+jprB1RYJxpzmbU25q4UjcnuU47lkbWF9gH+SKrj7
 VSJA==
X-Gm-Message-State: APjAAAVlxbU7iuwGyjcYw3x6kSnxKygpaosRGuXM9kYtLnM4B/z/AhKe
 o1q7Y/SN4znJDs9PbSWftn/DWXobXmM=
X-Google-Smtp-Source: APXvYqxMmvgctv9eNr1FoxklWI9fGHj76piuwk2dDyVLqt2aXh89oHLmf0Y98yP3mORrvE84RBWLjw==
X-Received: by 2002:a17:90a:d996:: with SMTP id
 d22mr6271335pjv.86.1564630710863; 
 Wed, 31 Jul 2019 20:38:30 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id f19sm102004331pfk.180.2019.07.31.20.38.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 20:38:30 -0700 (PDT)
Date: Thu, 1 Aug 2019 09:08:28 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v4.4 V2 11/43] arm64: uaccess: Mask __user pointers for
 __arch_{clear, copy_*}_user
Message-ID: <20190801033828.bfec6k2pln5dva26@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <7d56c56af2f883958d5e74fa3178a1f774b9fd94.1562908075.git.viresh.kumar@linaro.org>
 <20190731123711.GB39768@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731123711.GB39768@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_203831_703338_C0AF06E1 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31-07-19, 13:37, Mark Rutland wrote:
> On Fri, Jul 12, 2019 at 10:57:59AM +0530, Viresh Kumar wrote:
> > From: Will Deacon <will.deacon@arm.com>
> > 
> > commit f71c2ffcb20dd8626880747557014bb9a61eb90e upstream.
> > 
> > Like we've done for get_user and put_user, ensure that user pointers
> > are masked before invoking the underlying __arch_{clear,copy_*}_user
> > operations.
> > 
> > Signed-off-by: Will Deacon <will.deacon@arm.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > [ v4.4: fixup for v4.4 style uaccess primitives ]
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> [...]
> 
> >  static inline unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n)
> >  {
> >  	kasan_check_write(to, n);
> > -	return  __arch_copy_from_user(to, from, n);
> > +	return __arch_copy_from_user(to, __uaccess_mask_ptr(from), n);
> > +
> >  }
> >  
> >  static inline unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n)
> >  {
> >  	kasan_check_read(from, n);
> > -	return  __arch_copy_to_user(to, from, n);
> > +	return __arch_copy_to_user(__uaccess_mask_ptr(to), from, n);
> > +
> >  }
> 
> Can we please drop the trailing whitespace from each of these? That
> wasn't in the upstreadm commit or v4.9.y.

That was a mistake on my end it seems. Fixed now. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
