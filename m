Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC60F4490
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8CAyjYErNkRmO7mmdYwGWJywsdQbH6/08PdS4+FkLM=; b=mjpddeJ6I4y+Qj
	4oT6EYC7L8KcNJBsYFgoyugmW67jQyQOvPGlIDeP40qm+axRub7ir+VUv68MySnEMtb8qHbgaJUJr
	49TlZCnlnbiXXSSzCQKaytD3N6EvEac/lOD/kt0boNCriqw5uolQrotGBuP5Z76OTmCiPOY3wTs37
	nDjyQAtAcNJaV/Fw1y5dSQZfcN5c/6/n7O5Rf21oJEUxZlBCipabYJMXzNfxCuMrLzrlBawGFxTAG
	p/Bx6Ix0GbXbyknWmEH5RfbAKsTybzpyaYJd9jqWsh3BGEQuxRPwdv24I6p7+/xQSRpeAyjlfGh1I
	mEb5bNu0Yc6Olhr7ha4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1b2-0001qH-Ni; Fri, 08 Nov 2019 10:34:28 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1as-0001pp-GT
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:34:19 +0000
Received: by mail-pl1-x636.google.com with SMTP id az9so3047306plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 02:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=43HgKc1Co5mZNEWbvwPEy71M/E2HSo/P90VB2LKFpvE=;
 b=lQit6rEqsiQQ3LC8uCNVHmp3cSNHe3QLN2QVkjmz65QAyCanhHOJ/atvWD35GbMKsH
 7FQhw6F+/zj2EoHIyn4/g6wlJCCqMX8R2k5BzoTICWhOIsMaKZyKQ52DzhDR5C8BfiIE
 y6JL6i8ggi9BLIOGl2eYiEiOoI0181mdGtNLkO3BAA31iOIGdwDBB33Spt/pDlOWAn5A
 YxeXWN6kS8nSp60N1Bnejgsz6+WHhS5E2m2ttAOu7OLG5NVdUzOKluUGXY0H/e/KFfAa
 UFnv9+tClh85MYwbgscdQ0vcMXSAaQgcDK/J48N9jDrLvQsx/YsRC2TXf0pa9NvybTuY
 PYPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=43HgKc1Co5mZNEWbvwPEy71M/E2HSo/P90VB2LKFpvE=;
 b=UMfBCP40bA3uakLL67Xg1XpslxJ71zzxUHLUbAeW1ufxq2Irf/oyW70io23rEq48ek
 Oi526/fvwC+lNXfO5Oa/meJY2W6jkZdogbdU+hbr6r7CJaFFXTljvpaFoLvjbNsLR1Ou
 Ttxy4O883+pSMLf/16osV70uN3bDZPVhYl45lNTbbq4o/slGq6R2f/QoffiKya29BjGt
 tmzRX7iQ/kOPUrxBqJPvtI/33YAcyVNrLrV0ePPeEqtdPAQTtY/L0EDKh07nI78U/89E
 ZPpPcq03v6OET4Iq1eg1AfKbRYXh5TvzAnQPXZyvJc8ub/Dx+10TM4ah2/ZYiC+7UVM/
 czbA==
X-Gm-Message-State: APjAAAWZuvY2DMkfQ8dwWdJfc+rtvev6b0R9ab96sHFZ2t0UQa3fBLUJ
 9KJ0YvuGTIHKirNGPgq3UlA=
X-Google-Smtp-Source: APXvYqypcTD2j+TfxoxpwPnhis2mVHDXc/Yyk9JKNzK1iHJBAz2tB9NyVTvWB2zmA38YKuz+gzUAEg==
X-Received: by 2002:a17:902:bc84:: with SMTP id
 bb4mr9229023plb.143.1573209256899; 
 Fri, 08 Nov 2019 02:34:16 -0800 (PST)
Received: from bubble.grove.modra.org
 ([2406:3400:51d:8cc0:75bc:1342:3e74:ea62])
 by smtp.gmail.com with ESMTPSA id h66sm6145301pfg.23.2019.11.08.02.34.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 02:34:15 -0800 (PST)
Received: by bubble.grove.modra.org (Postfix, from userid 1000)
 id 1A2BC80607; Fri,  8 Nov 2019 21:04:12 +1030 (ACDT)
Date: Fri, 8 Nov 2019 21:04:12 +1030
From: Alan Modra <amodra@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: GENERATE_SHLIB_SCRIPT vs. EMBEDDED
Message-ID: <20191108103411.GU6708@bubble.grove.modra.org>
References: <fb6030c6-f96d-8219-61f9-548dfc9c5b5a@redhat.com>
 <20191028235341.GD3663@bubble.grove.modra.org>
 <20191105040135.GG6708@bubble.grove.modra.org>
 <CAKdteOa8Mf_MOd4Hf8jkcCcgo4bPH8Lss2QCHMu5BBog6N+19Q@mail.gmail.com>
 <20191105100317.GI6708@bubble.grove.modra.org>
 <20191107073700.GA22249@ubuntu-m2-xlarge-x86>
 <20191107074330.GP6708@bubble.grove.modra.org>
 <20191107172514.GA9267@ubuntu-m2-xlarge-x86>
 <20191107234842.GS6708@bubble.grove.modra.org>
 <20191108051839.GA35767@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108051839.GA35767@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_023418_568649_F7874E65 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (amodra[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Christophe Lyon <christophe.lyon@linaro.org>,
 binutils <binutils@sourceware.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'm reverting the patch.  My reasons for making it in the first place
were bogus.  The ELF file header and program headers are of course
still present in a file created by targets that set EMBEDDED, and the
fact that EMBEDDED stops them being included in the memory image only
affects some uses of those headers.  I still don't recommend creating
shared libraries for Linux using -maarch64elf but the resulting shared
library isn't as silly as what I thought.

-- 
Alan Modra
Australia Development Lab, IBM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
