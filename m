Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA90155F85
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 21:27:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FnerRFyF7Dv+8Saa2v46xl4VNFtlSwokapb/KbkZ2o=; b=bJFakWjNTb8A+c
	j5oyxA1adb0F53CwrnPjo6iDdyLCVvJ/dTNP5FP2JuFk3+VVRSbHIKLnVeGlm2zVsGvrTr8d0dPA2
	ZA67AiPHNpv8COdCTB7iyMZnnU+rv8hVRUBk+ITP/j9tOtGWR20qfW8JZsCrVYyggtA1coygSXDSU
	JqkYxHKGZvl+s1Z6dxxxgt6X1L5tQYthZxxUc+Z/5g2ZyZDcHfNJyMWEr7SbKwCfX1zQdFPR1kdfO
	xzVzEMCTyVCn9u9m52JZFJWCqW2NZIWFMyYW2DPWhKTldPIgZj00vHkIdI9XfPhwIW1rdm44sVtpH
	IhZ+HVRY2rJYEYy7YUvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0ADB-0004fj-Ay; Fri, 07 Feb 2020 20:26:49 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0AD3-0004f3-MK
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 20:26:43 +0000
Received: by mail-qk1-x743.google.com with SMTP id w15so387340qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 12:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8B5XdD4gQOA8Ju/7w3y+6mJSGkGb+YcdBnNJRrP84fs=;
 b=MA4LyJvQ7qGX6s/9lTbI/MD/oJ/4otXAKurDYMOOzYQuOSG3esv6PrDb8GiEhi5O63
 XFUHbdf+DYtFs755c4zat11V3gPTzSgfwBiL23rP1qzK//35gkOL9GrQHF8APc06d2BW
 iCzngI6w/H2S7/SxR3RYcsvhWx7iFaCFecT8Jsf1laNSRVEG1C04dS3swohG8N5B5f5R
 EaRDdWgbP4rxzlCj4epFIQdB/mXpAMgU9Zm6nUzBYw0tW3d8KLxVbKJwceAxgs1B2Tpp
 ASfmtXYzraZ0YUbt0zyyqLIHXSMAdV2gRd6aLFBap3PNZwxKY4NZ5snmqFf1gaVbeS9e
 mnRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=8B5XdD4gQOA8Ju/7w3y+6mJSGkGb+YcdBnNJRrP84fs=;
 b=sIGnxqZVjY+wPzosAPifnSI5ytflRRG+QiyVWBlA+fdHVb42n3e6jqCgO597lBSgZD
 tW6ilQX6gYTZVFv4fGuSV+YsU5qNSTmOnSQfQEHWYW5HLAWaoDMcre/jNVbACfci5VC2
 aLQbTEn0Cx10wgfFbCvWbKWCFkR2hMMGY2UlE9RX6sJu1QghmMIecuNZ3nAIXe+n/06r
 T+tk8JIIsVVDO3m60rG/2l7iokJlciV3pIgUhjtKFZp/zzh2WargNXtVkrEN3nEwk9gL
 3T63EwaUrZcyQCNDb8HqfEJFU4XF89jDT7HSUlgikJbp8zrQnrh+BOp9yNIP/CKEZvWn
 2v+Q==
X-Gm-Message-State: APjAAAV/qkjFLaG++IofIhsY0sgfyPkEbsrrKYRHC3d5+1H2LKfbHz0M
 W4HfyjKwa3fjw6ZPRwCZEfU=
X-Google-Smtp-Source: APXvYqyJz1rMrV/EpC7xpknAAVWZfHwpV7tdIU7Ry76j8YGzrd/L20oMozoJ8L58djBxMoVOPNDbLA==
X-Received: by 2002:a05:620a:52b:: with SMTP id
 h11mr722547qkh.88.1581107200068; 
 Fri, 07 Feb 2020 12:26:40 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id t15sm1743626qkg.49.2020.02.07.12.26.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 12:26:39 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Fri, 7 Feb 2020 15:26:37 -0500
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
Message-ID: <20200207202637.GA3464906@rani.riverdale.lan>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200207184532.GA3276112@rani.riverdale.lan>
 <CAKv+Gu8Z3=cqbNxspLXAgM_8wEm+to2TWRjpaaC231MbwL2Ycw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8Z3=cqbNxspLXAgM_8wEm+to2TWRjpaaC231MbwL2Ycw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_122641_754472_A13F821D 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Arvind Sankar <nivedita@alum.mit.edu>,
 Peter Jones <pjones@redhat.com>, Leif Lindholm <leif@nuviainc.com>,
 Laszlo Ersek <lersek@redhat.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 07:47:46PM +0000, Ard Biesheuvel wrote:
> On Fri, 7 Feb 2020 at 18:45, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Thu, Feb 06, 2020 at 02:03:50PM +0000, Ard Biesheuvel wrote:
> > >   data structure. It also creates a time window where the initrd data sits
> > >   in memory, and can potentially be corrupted before the kernel is booted.
> > >
> >
> > I don't quite understand the time window aspect -- can you expand on
> > that? It seems like the same time window exists between when the kernel
> > is loaded and when it actually runs, no? Why is this more important for
> > initrd?
> 
> When using loadimage+startimage, the authentication and measurement of
> the kernel image occur during the call to loadimage(), even if the
> source of the load is memory itself, and startimage() is typically
> called right after.
> 
> The assumption is that it may help to make this time as short as
> possible for the initrd as well.

Ok, this is for when we can use LoadImage, that makes sense.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
