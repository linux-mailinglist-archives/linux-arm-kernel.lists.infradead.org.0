Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1419A8A8E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGhhjKDIiGkTjnu/+ta1ltDefv5+PYEO2zkjXa5KUg0=; b=VHsBw91dNVV7IK
	uuxm2TF/B4oB3kinrkUwoZcLaipRxsyrnUbOMWt9IDBCEJcJdZZpZh1IVLFe0x3HWGeO/HpPeD3xf
	n8NX/BSnhicTcDBD/LvXjEJNjaDgmFCLPlEpq6lBf6XrOiyygrgjqY2U1+H/rW4qZyXj4ADzK85h0
	2hv2/uMkPPeIwWiCOQvNIBvsm0AB+mvSLOv7WwM2wDMTjhfM2gkc6hv9+Z3YTWMF3gjtEjxMJYB6+
	stX+SV1dsez46vzdDZlONrEKd37VjeM29PnGCNMmcXbGMxSd8sNZIGpFD5WRo919XcsMH+WDxEJKb
	WczPKG8G4OMFEZu5Zq5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHTU-0001CH-Sm; Mon, 12 Aug 2019 21:03:28 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHTH-0001Bx-EI; Mon, 12 Aug 2019 21:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565643767;
 bh=WvBCUiocoyigiLp0Fi/IoYgHQyq8r4DYjzlDtLDbMUA=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=b6MO8jthbtqz838yEij/t1eD6ilGnGqgZxdFCdnbWYIQcAK6zNwDy/5pGeuYf/I4L
 8KEFZYWNzFeMiK65JwQ2LlKVHmtdLcbLzFbkvfaXGCMnDCGVpxC11GQiiovkxu/yy5
 dqHkckKUEA1Fut9jzyJ8X6V1CUtCdI7thVjHbk90=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MbxJ8-1hhGTp1uxa-00JLT4; Mon, 12
 Aug 2019 23:02:47 +0200
Subject: Re: [PATCH 05/18] ARM: dts: bcm283x: Define memory at board level
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-6-git-send-email-wahrenst@gmx.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <22482ae9-0239-560e-ad4a-4ab13d864e15@gmx.net>
Date: Mon, 12 Aug 2019 23:02:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563774880-8061-6-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:ARo3+Icmnx/PndUhQU2k0e2sY26OWqJ3C06fIrGFTm+kAkDNG3G
 /yJoK2PKsy0heqEo+0iLJsZDm8SHprriMFTVYNr4S4GohYtz7Bt5Ic3UALXus+A2dUASB9r
 /HIbAgxcttGcBjfeQs2pvctMptxBI6X3eqrUOtrqTj8nDEUpCalYS0mG3tZ7Su3bloL9iFC
 f4VrxLoKxlDpwFianZf+w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:U1G1cJg8HDI=:Gr24C988FzpO7UmnSYRIHP
 fZAXIbOnrujKZUos5erQKmFbz2JLuhxjdQsW0Eq3tRZlpQiB4wgFHPx4qH39e41KCK3uldRTj
 Lq3ZPMvtsE1gW2XtEYtccKMQzVBuLAc0KfQFfVp+J1QHNDzr5aq75HjYedGm9K2ER1KWDDcyg
 ovsKRLAN/9CHkBSto1TqtpMwqd18M3DaLo0gCXqX2tFfL8XfSlCGBpfYZWM6ciTa8WUbml9+l
 5bGLDN0UBSahZf1Gg2Px19DUDlWtwRKZ6/fmQQtosIEdX2uAgnIKpu55t/VvseuxkAGeHqpzg
 M2QEFC4gMFjNsmQC4S4kWAJ9u9ygE6IyrkuQK8ZVoFN2sJVQPmLI1H4K5aeaN6CKmlc0DdCGn
 2gMK+JsTmEGWDAXrUBkc2GqKhkVdHUS6qiltNJvOQeAuLvUh5XzYqVOtcLxoyUMKOw5ovmfNi
 E8LfggB7C0qCu7u/geoBpNHvc7+goG75jXN9KNd/EuRk8JexEQLwX+fxwXFYENr9v1z2GBPcI
 PZkPM1xIJi7hYNjznE+QiXWDKFQvj+Upw/0cqq6QVCtj4t1pmlOSx2K57WzG2wnUTRjqXmtWD
 esMHGYzZAD9vz82CsFfRrzDkS7F7M8NqzMParFjaaDCq+1mhWe8l4sfTPwGET6kqzESBFmjti
 q3g8hYxP4yZYPPXDBxSzrUJBB+yF0txpQICSDHR9Uz7yO+kPAkiHRQk0VK3rWVAKPldAnaPQD
 2SQTMgh11n+mX/NE6wWa03E+vGUMWRulx2FIeI9AKO9wdxTiP5QTpDdOXnTSUSZH8rGOSILFj
 8bUm4RBiweNE8uTni/gUhdbXzGRYRvcXF4vvoAMja2n6guzt5R+o/X1aPLyVr+FrjVarDrWYj
 51R9R+E10zQsemR5ImCGmy0HSv295FbjTOHNcteWcS6RYvn0113PSbVwjfmPn17ZnnPnV/ld1
 hpNq9fZWyC4wohHrUk/kcb0xnU0ZEgRFeTE60pG4zU3VGwFiDxA4HSsE+mqPg+VZin5xycyho
 u23g8jNw6FVRNMMnQ4ECGVDs3yyzDJZ4k6MtoN4ETusqezDo7X/OXikML4UKeTgg1s+xPpftY
 gaPAjiLOA0eOGkGiBU3PITEE0fWPZtmpVLzl9idsV9LI5p3eZndsrAtqywSIZucX2BJ/bUuBV
 8Btl8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_140315_816776_7A7E1192 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 22.07.19 um 07:54 schrieb Stefan Wahren:
> Now with the varity of several RPi boards, the memory should be defined
> at board level. This step gives us the chance to fix the memory size
> of the RPi 1 B+, Zero (incl. W) and Compute Module 1.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Applied to bcm2835-dt-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
