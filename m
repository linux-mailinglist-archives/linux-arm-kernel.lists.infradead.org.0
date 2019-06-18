Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3344AC1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D09F0poFpfIaQn2sf2WYsZ+5F9k3+j3C8c5ug1NI3Hs=; b=sPFyVRvK88WY8H
	xMOFjCA6xt0XxGzWgkkyafrqIixs7tK1Fiuf73rQ4hd3DduuxC3GDyDf1fsbCRCwsUr55CMI7BZoV
	vYYmmrpuZM+DR9ciY7e+4Pz+h49yQUy0/znhS1dHSNa5+WO2oK8SyTFP909YaKIguFK4LxURo5eut
	QwvpSLLmY8rL5sv64rKve38ahqsYmHaE1bEna9/OIAuiR2asQcsjAocbFqHhwM6TOOx3VSlKhwJwF
	BhwoHSVaUtILKiVx0Gp+GKJFuAkjrGcwoC1qu6nCsH1gHQ+w5gYeY1s3RSYX2AKt+Q5Ua5WXW6b8x
	9QEeZaYm6O0GGEisD0JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdL9O-0002KJ-25; Tue, 18 Jun 2019 20:56:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdL8v-00027o-Pr
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:55:51 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so965067ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rgyz2cVF6lciICHj9aRxm3g8t9416ctrHS5B3PoGzGM=;
 b=er8IX2IUKbXU9cahan+PR49raLMPgXXPPUR2yIHqZPbkQsvl37yRNMqfD0QJCdAjv/
 Js7XnzEYA+84AFVz+WBmB839fafHCxPz6VNvQMgMq5clTEv658MFIY2euF6/qDtGFn5n
 /mCm3ynK8OYbMKS6yBEJaYs5AYJ0Te0crzo84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rgyz2cVF6lciICHj9aRxm3g8t9416ctrHS5B3PoGzGM=;
 b=dZAEbcz0XIxnC4K+kIN4nzg0aP70sFpmhf6gaGuS3M3kVbGimkFWUtUA9Knk7R6WEc
 evv9OZGSvsVZGV7WkSgJsOHr53h9689uYP7/CSmHTu+Z/5V9vxgeJbV7SnwwdQJOH9Ew
 Afgcyod7t0Q+M8XnFdLUL69eQXztLMj4I5ruPvv68OZ3x1OszNTAaG8iEZliwCviZPzN
 vE/LJi6I6Hgt1jw57LDutpbmRuTv8g2U8AWctuph7XxB+Cu5qKHEO/1oaK18dOLGx05L
 7XYkxPSsK7wedLyH7XyW6Af6GsyW2tZvrTi8JaefGI3ALnsHKdo2fsoxlhHbX8Tw6cqX
 PN4Q==
X-Gm-Message-State: APjAAAWLu5Iqo2FJHNMze7cTjCIUM/nxThF1Toj5JOqIPx116BJrrW0e
 xdTYHKnFFi5Bl9c/zEZFfxXTZTxnr1s=
X-Google-Smtp-Source: APXvYqyY21ESuacO8KPmwDZGOczJTQb8HcGZ4nR/FKnl5kfFq32JfKOOuLy9YLqLacTMDo2EkMOLNg==
X-Received: by 2002:a2e:9685:: with SMTP id q5mr15680739lji.227.1560891346789; 
 Tue, 18 Jun 2019 13:55:46 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com.
 [209.85.167.53])
 by smtp.gmail.com with ESMTPSA id a70sm2555234ljf.57.2019.06.18.13.55.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 13:55:45 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id b11so10350160lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:55:45 -0700 (PDT)
X-Received: by 2002:a19:f808:: with SMTP id a8mr6231181lff.29.1560891345414;
 Tue, 18 Jun 2019 13:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wgTL5sYCGxX8+xQqyBRWRUE05GAdL58+UTG8bYwjFxMkw@mail.gmail.com>
 <20190617190605.GA21332@mwanda> <20190618081645.GM16364@dell>
In-Reply-To: <20190618081645.GM16364@dell>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Jun 2019 13:55:29 -0700
X-Gmail-Original-Message-ID: <CAHk-=wghW+AKvRGevUiVWwTqWObygSZSdq6Dz2ad81H73VeuRQ@mail.gmail.com>
Message-ID: <CAHk-=wghW+AKvRGevUiVWwTqWObygSZSdq6Dz2ad81H73VeuRQ@mail.gmail.com>
Subject: Re: [PATCH] mfd: stmfx: Fix an endian bug in stmfx_irq_handler()
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_135549_901471_FAFACA21 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 1:16 AM Lee Jones <lee.jones@linaro.org> wrote:
>
> > Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
>
> Ideally we can get a review too.

Looks fine to me, but obviously somebody should actually _test_ it too.

              Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
