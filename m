Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE18B5982
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 04:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWuvrUWPofqfmj2XhNrFJ4tSbwwI64QhtkBqVHPv+EA=; b=AvyfBTi1J4S8v9
	rVeSuNElAlHR3JOKqbpY8Wsctpqa7Jc5K2FWBLdA0N4dnlaL/iWD7aZAuBJssxwtirXspLRQaYUYq
	nyobRsTEyZIioWR+N+Dn8FiXGHMS3FKXgc7p4UboElS7yqTuPbelZAR5NWiufYic+bBRSQrfx7X4j
	xrP5WPxmi8hSflzIgtWrigDKA3EnE+pxv47f1CrN/Q6NXNja1Ly3z23cXdhbdpJzNpqMum4uf7EUs
	/rZASvanCDiQyU62a7x2P51TbGaTUnRxgCen3ytFmUUAtzD6I3CIosPHi8ipoN/JKJZuxHOL/zR0M
	4VDQOcDEkffmeY5vrVQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAPOv-0002Ya-Qm; Wed, 18 Sep 2019 02:09:01 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAPOh-0002YF-BX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 02:08:48 +0000
Received: by mail-lj1-x243.google.com with SMTP id m13so5468685ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 19:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M4EXeCm0MzABAUUYTcdkcg4nr3bAPtuNlxNNQTpOAZ0=;
 b=hk9iuoAqBGbcusuXORG71mCMRM+zhhyKfm4Ux1G0UTwV/8o+1A8oDAuEnKfSvsFrrr
 Bsbxe8fTbPnT9aFgD2JkXFEk0BMWykOusHfyJUoRaF4xCHYNHYv3VgTocUqXNapjbtLy
 a/JGJ/xAvJSvK+Ot2SIsk1VUYag1OBrl2R6xc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M4EXeCm0MzABAUUYTcdkcg4nr3bAPtuNlxNNQTpOAZ0=;
 b=oTfw+DYQ2G+1hlNEDZ9/zm2CDHUsocx6WpkTD8EVkNfH9r45jvkWnxDNHVDiEQQZ3T
 VqtUOCuXoQ9g39kypmnUkkMeWmb3VT7nOo7XE5PgJ1n8C3TPP2V26qXlwtgGKD2eA21y
 bIKiC7KI5eBZ7kFo75DnjuN09tyglFY4gsKjz5mzA5ThVuW22/iXTPZukFlXKijBVW6d
 VNotZ3siqkUikS4Z6LjO4gqZ0DFh0CdEMvR6iKSor6m6UTDXz+mVT+heKmJOlxpv2ujQ
 lFve37zRKnZcq91zteUYUUu1YXZOIPY3FgVVHA884as+Jh8qifz05d+YnggvIrYrRz3B
 150A==
X-Gm-Message-State: APjAAAUqsAZ7MWIIiXpnyMJDSgQ4tP4SQumvazE4WXri1cLhvmlsVk0y
 dMOnSdDMFWX0m/EgbysOjf0opueQhOU=
X-Google-Smtp-Source: APXvYqwghHpybpGhLTaOi/jbYqLb7WI6GNPh1vHX/ZMfo6O8OTlNdinNw1Cfyiz4kzBWeqgphdyAsw==
X-Received: by 2002:a2e:9241:: with SMTP id v1mr707396ljg.148.1568772524477;
 Tue, 17 Sep 2019 19:08:44 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id 21sm745758ljq.15.2019.09.17.19.08.43
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Sep 2019 19:08:43 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id r2so4392754lfn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 19:08:43 -0700 (PDT)
X-Received: by 2002:a19:741a:: with SMTP id v26mr659794lfe.79.1568772523204;
 Tue, 17 Sep 2019 19:08:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3ArYx8LUbYhjTw2wOEZgK9mJOE_PaLzuZTfn29Z5+K3Q@mail.gmail.com>
 <CAK8P3a1twq1+RxS9uE7LQWAbg4tf72R2df4Q20fXUR_4+7B26A@mail.gmail.com>
 <CAHk-=wjeGTRhpczCRRwHv=M+LCudK-x5jmu7-HP+1UHbCf=3_Q@mail.gmail.com>
 <CAK8P3a1Xy7=o7KSawy6d7JkEm9VqT57vZ-zc45S85SXB7=pc+w@mail.gmail.com>
In-Reply-To: <CAK8P3a1Xy7=o7KSawy6d7JkEm9VqT57vZ-zc45S85SXB7=pc+w@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 17 Sep 2019 19:08:27 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjtod1Yr72rST6M1w8Uk5yF94Bqy2cMB9sbzYeMv89rLw@mail.gmail.com>
Message-ID: <CAHk-=wjtod1Yr72rST6M1w8Uk5yF94Bqy2cMB9sbzYeMv89rLw@mail.gmail.com>
Subject: Re: [GIT PULL 1/5] ARM: SoC platform updates for v5.4
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_190847_416391_F100C5EC 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: SoC Team <soc@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 3:03 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> There is a fix in the dmaengine tree, commit d17d9ea95727 ("dmaengine:
> iop-adma.c: fix printk format warning") from Randy Dunlap. I fixed
> some related issues in the same driver but missed this one because of
> a clang bug that is now fixed.

Ok, I just pulled the dmaengine tree, and re-enabled the
INTEL_IOP_ADMA driver since it now builds cleanly.

The lpc32xx_udc driver is still disabled for compile-testing.

              Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
