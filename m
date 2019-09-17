Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22850B540F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 19:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZrrt/Nd97eGe9J/+jTU6fhILAlIGjSNJJ5XLXQNBos=; b=PNzdazytEw0Ib2
	ZWwwt1UZyPHx5anXC0rtFAdGtYrqedchsn22ynSqjmih2q1ALH9TJSmWQhb4u3xuK/J5eqrsSFsY0
	M9Cj8qS2bM8uKvWRusu0Whcl3TkJXo871OkbOx7ULl3w6JeBOPWZQ2EUOv3H0KUlBunUeT31Zzx9z
	WxxBGCSzlwr5nViRs/foCNoPdDfW6mELDpv9d+cGgpepNf3ToBxGh+1MDNf6DCtpTpBDje37rJjLl
	7KeqhjJoNxiEc81n3XqDEG37dHMGFSuH6csWD1Ep2QwMCfLw5Sh6q94GE98S1e+sNBkdFOHUIjzHg
	ggrL9QL6djxAk8xyvz1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHCq-0002Iu-Uq; Tue, 17 Sep 2019 17:24:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHBd-0002A7-5f
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 17:22:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id t10so1806838plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 10:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=3jwMWA6cEaxv9WIpjetOwYYBqadUeJXhUuLUJM/0FHI=;
 b=gN7Bf0zDEeQB9AtiCpbYNI6a0kYmT1TLFzKVBdvqKMHXuhy+sUkc0t14PlE5PZG5TI
 909fvmF0W0i6l33AcNKC2HC5jVVQYRWuVjyfkGiT8bdAw6Q0w2AQuvfQTmJ2YnnIVvnM
 O1AMqy+MZiI4fwk/ALRM/9+P3Z0xalM0gA0cOBwDqHaYqwf8Eg65ZbaACpPFOea+TNDN
 wlULQEw7c4a8T5BgfHa9/YC3+ftyVbS8B1Pl3tBpPZ5KzudZAVT2jL4PtDtfagvX0CrO
 s0oNrtarWKVA9VIr61nSto+VjLNgGSP4WlbCZnigXqTiGvs1UuQRjGH+HzKdt0jPDcCc
 0Aog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=3jwMWA6cEaxv9WIpjetOwYYBqadUeJXhUuLUJM/0FHI=;
 b=Nuzin0Csnt4TgRT6EUD5uaLqxLa0D/LaUc0BDidavaBfFEYpHlfyFoOnm2zLLJ42p4
 XEvAKQkKtiZ489tdXr3pDXqZqL4dtK+Wi3dFnaEKrxTS5SYs2uo54Miu36Xl4qjXbtVu
 qekjgv8ZXjMaEzmtd9hVkSToIeYXkbDQ4SoS+6+omBnYM+3xuPJNmNFDHgjyg1afmsyg
 p7yG63qrW8uCCac5NAAZSdu5hvs9uTd6hMeO1YG3z1tiwj0REY+fn6Hd2kI2w4oJ0YKA
 szJhW+9RcOrwHDdUyaMxgS13CP+QbLGCqH14hFUMT9uZbHL8Fcv9gIaiooyn6sXInCLI
 SVeA==
X-Gm-Message-State: APjAAAVItaJihh1i/URFJo5k2w5cacpz3uf0uqqSqfSzol/R3vIDcNG9
 411ZnMZ/BVjDy2V4S5RXdwg=
X-Google-Smtp-Source: APXvYqxhCVkyATlZAfZye8nSnYnaGdsS+VtADLd9a4rTVNBS9yExFmRhXXgjTinxQ7i6hLDaB3sqIw==
X-Received: by 2002:a17:902:8ec3:: with SMTP id
 x3mr1463796plo.103.1568740962871; 
 Tue, 17 Sep 2019 10:22:42 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z3sm3253427pjd.25.2019.09.17.10.22.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 10:22:42 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/1] arm64: dts: Fix gpio to pinmux mapping
Date: Tue, 17 Sep 2019 10:22:41 -0700
Message-Id: <20190917172241.31726-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1568018127-26730-1-git-send-email-rayagonda.kokatanur@broadcom.com>
References: <1568018127-26730-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_102247_939019_B9176263 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  9 Sep 2019 14:05:27 +0530, Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com> wrote:
> There are total of 151 non-secure gpio (0-150) and four
> pins of pinmux (91, 92, 93 and 94) are not mapped to any
> gpio pin, hence update same in DT.
> 
> Fixes: 8aa428cc1e2e ("arm64: dts: Add pinctrl DT nodes for Stingray SOC")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---

Applied to devicetree-arm64/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
