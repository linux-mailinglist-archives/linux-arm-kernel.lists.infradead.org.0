Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300B312F955
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 15:47:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DwmTocB4iqOQ+cs7Wppo50FadyLjHtFtfgTjgruhXU=; b=cpYCVaiVRXocTl
	I2Zb20mNdkUffdvdJtRoMBV+AwfPgB1qA+heJjshlV4YXtEXFAxyTGyB8LGfyVYafiP4JO33Nqagv
	N6E4/zlIuT9pypb2WYQ+RiNZtNPF474nmufth7OUAFW+QU+m8QJVVixuK+No9N+r5OGC7a9n/EwGL
	W/twm4RdvDx1yt2j54iUtn1csiRanPCprbe0GqCmFa55hnv+oJVSuA9OCeLD+R8RHhBi7H5AR3FyY
	UFpcaFVc555iwmwxaoVCydKTCoeWFRb108yZdrl0dDr+wRAAADaUNhHi3xqjuZfk95Ok5oTWupq1l
	qSWI0ZZiiMwm3/3MIi4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inOEr-0005s1-4Z; Fri, 03 Jan 2020 14:47:45 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inOEk-0005qY-3I
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 14:47:39 +0000
Received: by mail-wm1-x332.google.com with SMTP id p17so8832545wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 06:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZogtiFmtlUdFfJANhkVuqF0v4foNHoiV3Uj/5OwetNM=;
 b=VZ+t5iUu94E4FEfr9/Hf+RGeIdwyUfEVsfmjH4G3bj9DpwL3mA3pU6R6oUulZr1UmA
 D+1/W6kNsE8KZIKJJUXx+Pa8qs2LcQtk7P5b0a1ReM8imUQ4HLu4k80+H7R1PlNKWS5N
 BVwr75Ilu+rpTZxWcxiWxAyAnIr9RzERXQy0583TTa75hwcT2SvkU9CY85QiieIBucmm
 xbutLOm/Lm04mujAv+lClzYV1qTxZABcyY14HuIl53A2qlWy+nPsCycUqfDySl+w20/d
 5mUJdOTzRmpBPd8fYm2Kxd2yus+oNQkW16ktzVFrG7VExZMjdabAYQIqdnbexQRLEXLf
 V4zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZogtiFmtlUdFfJANhkVuqF0v4foNHoiV3Uj/5OwetNM=;
 b=e7sTvE2MksmwHXZrxUUqBRcdpG1jJmtovJahNd6Lpi1CK8qogqXGvCb7u1EYYNLbg2
 whfL+gtM6nli2hdZs9kajdpftd7uH3IbcUfyq60D3DD2z1F3aNm+lJdI31zCLuuHAVJ1
 BHbSBeswjClX5dfH4nYRoF51SO/nr68RqxS89RxM/9Nr8D8Z3wEkufYYqHS+n/TLTocP
 aj6mL+qHowvvKsY1ZCYUTjba9+au6PXekeGe+3ZnEnMmG2MY/rPd/eXu7U52aBbE6Cke
 vFlGEJDw/36/fqgqjcFf59oN24Py4wlE1HqJsEnMU/8orWWI9ZVEDRAZOM22dlK8Yqox
 JtMA==
X-Gm-Message-State: APjAAAVgYCvfczwZ3lOcBHkjVhypX5nk5WKvt79LTmTC+5c/qLcUJ2cV
 /5wKSIVvjo42s66ZwdFuCD2w4DwD5pvvAhdnJNQkxA==
X-Google-Smtp-Source: APXvYqyMZIS9Fw6TXUzO4ysVGG0Ja6YI02WAJYB9Eu25nvu4Pzdy7/PF+YjVodHTc9ds2vSmBTLQqm+XKzgmrCBgcFY=
X-Received: by 2002:a1c:a795:: with SMTP id q143mr19253024wme.52.1578062851976; 
 Fri, 03 Jan 2020 06:47:31 -0800 (PST)
MIME-Version: 1.0
References: <CANXhq0ok2Qo1zzyX2J4TFGbst_Zn0d6tLBqt30yMEq5JOLxFeA@mail.gmail.com>
In-Reply-To: <CANXhq0ok2Qo1zzyX2J4TFGbst_Zn0d6tLBqt30yMEq5JOLxFeA@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 3 Jan 2020 15:47:21 +0100
Message-ID: <CAKv+Gu8dNReF-rrXnQgq6XJDfpCJ+g=A1fXzbtPpZP=b5GM1GQ@mail.gmail.com>
Subject: Re: KASLR: about the vmalloc area for randomization kernel image
To: Zong Li <zong.li@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_064738_333824_08A223FE 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Jan 2020 at 07:52, Zong Li <zong.li@sifive.com> wrote:
>
> Hi Ard,
>
> I'm working on KASLR for RISC-V, and I'm interested in what is the
> consideration of choosing the vmalloc area on arm64. I was wondering
> if you could give me some advice.
>
> There are other architectures had implemented KASLR, such as x86,
> mips, s390 and ppc, they use the lowmem to randomize the address of
> kernel image, it seems that only arm64 move the kernel image to
> vmalloc area.
>
> I tried to understand the history and reason for using vmalloc area
> through some discussions at the end of mail, but I still couldn't know
> what is the reason for using vmalloc area in the beginning.
>
> For the randomization purpose, it seems to me that there is no
> significant difference between using lowmem and vmalloc area. Would
> you be willing to help to give some ideas about that? :)
>
> Sorry if I missed anything. Thank you very much.
>

Are we talking about 32-bit here? If not, what do you mean by lowmem?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
