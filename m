Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A60996875
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 20:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4RGg8mRcHqdzd5kVJ2uq5ULHO8ttAYc/T8p20Nm4sA=; b=V/HBI+GaZZblBK
	2+qpOou9GvtMWpqxx91kw0xpx5x5GT0iqGcLPkEKmzsFxRzP8VyaWZqNSQ5mkzDP3g3GuRB6hoUcr
	LFriGjp2rqFoEcAnxAWmcmAwGU7q3iOU+2zi9A15ZEkXrEtDYGCAEhiWKpRCO8G+r6dcz+qBI38kg
	tftVLKFNl6Xpl70JZB/eHLT3GIlVlD+weSiJAG7pJz4PFpLXRGywGuVKolpJ1H007ROPYXa5hNnVm
	3c4hS0ZYetXj9+FAwWlrMp2ffw7xVlEMXIpJ/b/tYd+Dov0LoxMEUBP5I5zBZZJUsGDo2RcoUZuQx
	o5HGLirjUHHmfUqCOV1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08iP-0004FB-UJ; Tue, 20 Aug 2019 18:18:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i08iH-0004EL-IF
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 18:18:34 +0000
Received: by mail-lj1-x242.google.com with SMTP id z17so6037179ljz.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 11:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Unj7sanS3yNoODbxunZyoxiRdRfNXJRcFXpspCkwhBc=;
 b=KOvRx7eNsZutcVb2h/CbGzFJ9FNMrazQic+Ap+XmQTajkv+xMrbfqrXHkSpDa0bsaj
 ROpKfpQNulGzgJK8T4yC+5oDleaylYeC85eUjeW+NcvvoAkFYgKA4KnRjVK4a8feReTH
 tGa8fFBrbbu8Rzi8iOR9f2c5H275q8S7KqwB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Unj7sanS3yNoODbxunZyoxiRdRfNXJRcFXpspCkwhBc=;
 b=H6KwKX0AbRG5tfHXSQrZYRGZrmYUu+kMwMhLjqcxw7RUBApE6KMAodYNbOxFwF+1yN
 7pkHiKwI3t0QFQVmGsZ+jbFrJIBBzbzez5eLYJICCxv9pKoicxZr+yeWgv8lPH4yMXma
 BKVYjzEwpio4YW7/+iODvg4IT0ntHoVEPoCOB14V5Yl3idmiRCEUjZXh7zRzAv5lKnbB
 QCx5x/OuHI09ATLknwxZE96uceDDxVr/+vnOL/giKg0TDdKNHjNoMCjrsM0/vjEcynSM
 2SLQUvFj+z8qLSwEnFzLuXpTGP+kiL02t1iTndtxBYy5USSCv/JD/IIfGlfBIAadj3Jh
 xrDg==
X-Gm-Message-State: APjAAAX1649aq7jjEpSk4KFoJufs9cn5wHa6nUxR875qg5eg4TROny7N
 iYMXMMB9L7Ij9ZCkJk6H4jtG+wpUxw8=
X-Google-Smtp-Source: APXvYqybbD0Rk1llbCGRzJpRpi9apxnCVWG3lXppSL3Vs/rprg9fxWkm+YaJKvl0K3E6SRjMuoRKjA==
X-Received: by 2002:a2e:9597:: with SMTP id w23mr15997190ljh.147.1566325108740; 
 Tue, 20 Aug 2019 11:18:28 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175])
 by smtp.gmail.com with ESMTPSA id a13sm2974751lfi.57.2019.08.20.11.18.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Aug 2019 11:18:27 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id l14so6032430lje.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 11:18:27 -0700 (PDT)
X-Received: by 2002:a2e:9702:: with SMTP id r2mr15019171lji.84.1566325107442; 
 Tue, 20 Aug 2019 11:18:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190524174357.GC9120@fuggles.cambridge.arm.com>
 <CAHk-=wijeJ5OjswsUkm0Fns=0kd7kgRo98uPsJE3HQfwP5mBRA@mail.gmail.com>
 <20190820093709.GD14085@fuggles.cambridge.arm.com>
In-Reply-To: <20190820093709.GD14085@fuggles.cambridge.arm.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Aug 2019 11:18:11 -0700
X-Gmail-Original-Message-ID: <CAHk-=whxG=phQsXxfmeS83MEsks55faRODxxrxfCzdiEideGqg@mail.gmail.com>
Message-ID: <CAHk-=whxG=phQsXxfmeS83MEsks55faRODxxrxfCzdiEideGqg@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: Second round of fixes for -rc2
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_111833_624650_BBFBECDE 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 2:37 AM Will Deacon <will.deacon@arm.com> wrote:
>
> Thanks to the tech comms folks at Arm, this should now be available and
> work is ongoing to open up more of the documentation too.

Thanks.

> For example, the A76 SDEN is here:
>
>         https://static.docs.arm.com/sden885749/d/Arm_Cortex-A76_MP052_Software_Developer_Errata_Notice_v16.0.pdf
>
> and if you hammer "cortex a76 1463225" into google, then it shows up
> after the Linux hits.

Yeah, I have long since given up on trying to keep track of everything
going on, which is why "google finds it" is important to me. And I
verified that yes, now google finds the ARM errata ;)

Lovely,

             Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
