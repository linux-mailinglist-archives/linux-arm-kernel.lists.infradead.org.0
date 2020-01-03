Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD2612F4C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 07:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z3orW2TewlCNefz0FbqRdLRIRs9L/6Da/e/BwX57sAg=; b=qJaEiu/05LiR9C
	7EPRGPXSGmd5jHiy4x/xCVEFlzmLlt27gFNzE9cjBc3hfOQ1Ug+0qJiN3iTYhGlgxCg57XIu9eJge
	TV4676OuUHpmv4ECKJgM8N/cPV43GAy1UVcba+00cCO6mJvjJ5FRnwlWjVOcYKo2r0lC1oXd7/lJl
	NCGf/D6Ex8yG7WDxPTOVm/j15apIdO0Md/tMaxZPTXyjZ1GAPbuITaxOQg6x6YCimA4MjjVTy2IVW
	lmrk67/sfLUBeLZ1zVLgEKqi2AtUGpxBcjXufxcZo36PyY9cQi/7fcEJOKkeEVf6CGGbJh/e1bpaw
	wu6PAg5lNVkKv1d+16eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inGqa-0001sp-13; Fri, 03 Jan 2020 06:54:12 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inGpG-0000gl-JL
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 06:52:52 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 66so59940376otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 22:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=pWURdDS5dmO0zR82XCbKmTh5+AfzlT/xyKG+cUug4Ig=;
 b=FzGOXgpQ/WayYbtAlOf1EY5CxluURJ4R8PJ5sLReadCBLt2eicIszwQwvZI5QsHJm0
 MJQyk36n1EoV/ve7uCPY7+x1WC00HBxAO9efxO5FWXrvZbuaA4JOsj/YGRnHt1uylv3q
 NFahlK9uWoJljr0IRHxcHONIEe5XjofXrt+xwulP9xq48oCl7R6JTZLqWTRWKPC5CcUm
 7brE1qC5WfjdDq+QuMEpEZ6N67ppIJDtMn2mbvPRHRuC8QVSgyyYblsMH0smXzN7sEpU
 fpvDx9zloAjx3zOY3pLlygthtNzOI+s9TpaixX1xVp9EE+Zn4dt8ViTzysNtUsscLOsD
 j6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=pWURdDS5dmO0zR82XCbKmTh5+AfzlT/xyKG+cUug4Ig=;
 b=VQlxCiaWzyYJpH4h4vsgSeg4V0K8xQ90pcU7bzI5MqvxvTDiOY/Tzttjkmub21dXVz
 OPVwzYjuJ3hKKOPw675sghS8gfLBE2VowxK4SlINeiw3XCO0FXfCrunTx6lpvmLqDjRN
 2Z8oDxmwRtr/w1iXisFoOZTm+rjdCu5N0F8mIgaYGY480HmlART71LOlFDtgRcv7g90x
 pm14dJGfE3z8wcn4Twv+Ylr3+npuKw3wzimKVAG1I+gE7ZPXfRncDIbvpSYHnohJ33L8
 ok6KgnD3DRDl0dobBxYqq1szzqRiuyocnR64WMoxEQUR99HWJt3/kAnTGAeICbCGakI9
 VFJQ==
X-Gm-Message-State: APjAAAXXr/4ISzH/307QI5Y9JxwirWZzSA9n0LFFAEo9jDLWqUfCTYwE
 /84X3W2E1rUQiLb2MIl5j38Jt4+bfUx7MFVsDIb67R4Jb5U=
X-Google-Smtp-Source: APXvYqy8DbLTtWHp16AMd8iCgmiwLjLF4tND7EBRlz+WdY3mDGvwow/bTN7BYIVOaUIaOivmzUsJf7H2VMaX6/zzGEs=
X-Received: by 2002:a9d:2028:: with SMTP id
 n37mr100982175ota.127.1578034368527; 
 Thu, 02 Jan 2020 22:52:48 -0800 (PST)
MIME-Version: 1.0
From: Zong Li <zong.li@sifive.com>
Date: Fri, 3 Jan 2020 14:52:37 +0800
Message-ID: <CANXhq0ok2Qo1zzyX2J4TFGbst_Zn0d6tLBqt30yMEq5JOLxFeA@mail.gmail.com>
Subject: KASLR: about the vmalloc area for randomization kernel image
To: ard.biesheuvel@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_225250_836164_0A336D7B 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

I'm working on KASLR for RISC-V, and I'm interested in what is the
consideration of choosing the vmalloc area on arm64. I was wondering
if you could give me some advice.

There are other architectures had implemented KASLR, such as x86,
mips, s390 and ppc, they use the lowmem to randomize the address of
kernel image, it seems that only arm64 move the kernel image to
vmalloc area.

I tried to understand the history and reason for using vmalloc area
through some discussions at the end of mail, but I still couldn't know
what is the reason for using vmalloc area in the beginning.

For the randomization purpose, it seems to me that there is no
significant difference between using lowmem and vmalloc area. Would
you be willing to help to give some ideas about that? :)

Sorry if I missed anything. Thank you very much.

Regards,
Zong

RFC patch:
http://lists.infradead.org/pipermail/linux-arm-kernel/2015-December/396427.html
sub-series patch:
https://www.spinics.net/lists/arm-kernel/msg483446.html
other discussion:
https://lore.kernel.org/linux-arm-kernel/CAKv+Gu_i4M=RJmofMRoq63rR6GBf42W36FtomhTC9-o9g-sAiw@mail.gmail.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
