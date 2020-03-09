Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A14E17DC73
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 10:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvyQeOzniY0xam41auLd41sRs4khpXx9SPh3WFKd9AE=; b=awZHH+Y6VeuYdF
	6pWH7ZyDGzvx8V/KbMFr7DXcXpT13OO2EO/DjpQqwE6W4c4yztdwFtuCglgFKVOrPGByrga47cU9b
	K6+ry1JlPeU7LgTmQHglu6pDS1nQR5tzH+VXVRYIsFDe9KTauL2m7sjA5YG/Cd9WEPRWAqSocx6Dm
	WyrcyfZGCytDDYRYybIKRDWK25rS45EkAepBmnc9GvnXsXAgjfncnxatDM8TV+1arcWynyTTIPi9D
	+s11UxHofKyJD1Grs212opZez1g25Pnr/tgeT+2/uaX+z5SNQZo/HR4gnI7B7JjNq7lX+2NHnTqyd
	LDLqihdCPpf9PtS1OJUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBEka-0001pE-SJ; Mon, 09 Mar 2020 09:31:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBEkT-0001od-AS
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 09:30:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id d12so9153520lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 02:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TYcdgI6FvewhDZOpmZcO42Ni58JD8wtrbZBYBFXrvO0=;
 b=sRH0acWgVBB+9NR/UF5Prr3uv/MZcxnZ+8nOsAZrAiX2cGHuBUSZGp5KF76D51wW5+
 1vYXf1TBVeSiGoEsT2pmlwUhOuepbYKdlkjCPVCw4sBtFaOPwmOdSJI3sSaM7tq0uNG6
 siccDlzUYxpVRNs2MaD9/nYbm8BWPBDdVmWXomSKG9mCt46XKyPZpSuLt8OvyB83k2mi
 L2eZQBNi55o/zfEG7a/Zm0ke8ZxW9xPo8Hok6vXKrAiSYV7mXwPnnJRr6635mKt1SMGC
 Dsrukcb2WSwlW6OQ5Ee68+LNBCmgcXiVt3Fhz4fwpJGbbJpPcJHgCykIMfdN9OKiFTGh
 T/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TYcdgI6FvewhDZOpmZcO42Ni58JD8wtrbZBYBFXrvO0=;
 b=qUWk7Rltk3kQwPEgtQpoUgpBAdxza2nOJzoSuE06bVZAMdDtqmUXICNuuMLUVQGsON
 02LuJ2PJjD89xojFg095ArA2V4JkVQkWnPTMPKLv96bBOja0ZLZcxaHwMR/ex3molefu
 CRB3NNPKyIlitKFpC7HqPzpguhsxoPLgqSyjbU6I8ePPiZw3MGyGtV552i90XoZjbYl9
 bmtu4fjiaFr8rvZ9mMMoBDtvHssjGhrINXFUVZr/nhsDlkdjhRsrYNCCWC/6KvA6NgsJ
 1dkjRDao/aF1QWdlp3jljP56WE/yWCzNkoBOPpcaThbTxqOJV0vJ8sn2ZY6PAuXMXw91
 e5xQ==
X-Gm-Message-State: ANhLgQ2RNYJ7oXrfaZOWGZQ4KYjzoOs0E+S9DU734ApnUa/AKGROU1EU
 vq5zJkAf4jTCYkV+Xj7WEEkaRdIO/eSnrwPeODHvjQ==
X-Google-Smtp-Source: ADFU+vuye/I8arS2yl53n56BiFwgYP0noR11NDx+eCmf1Q8F7bLzVJ3uGQe5T1ymxPZxIR9TSkq+SUJBK9BAL8hqd5Y=
X-Received: by 2002:a05:651c:1026:: with SMTP id
 w6mr908328ljm.168.1583746255448; 
 Mon, 09 Mar 2020 02:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
 <20200306005809.38530-3-alexandre.belloni@bootlin.com>
In-Reply-To: <20200306005809.38530-3-alexandre.belloni@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 9 Mar 2020 10:30:44 +0100
Message-ID: <CACRpkdZxnkni+zjYn2vgPGVLDMDghzdu8U4Parp8MSQb6CycfA@mail.gmail.com>
Subject: Re: [PATCH 3/3] rtc: pl031: switch to
 rtc_time64_to_tm/rtc_tm_to_time64
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_023057_358114_7BF29ED3 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 1:58 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:

> Call the 64bit versions of rtc_tm time conversion to allow extending
> support after 2106 and properly supporting the STv2 range.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
