Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022BE17E679
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0y+7umxU+0OwUKRUEFoJSpZ2UCA5FWF2xNb/x2w7qA=; b=MH8c86MoNDXtcH
	MQn7fsWmO3eDot8+Akg7V2aiwXOdqVy3zV8pKmH/H3YkNOdTrznmRVmz/XGKdJ5/hkvwYzLcLAH6i
	dPMo9u6kKhe67SGQ2OS0htoCyUzCxhJifDRnI8e9U5UwimHqYAmOTnsZ7msflRzx1mvHnH5cFpXKG
	BOeiu9rr2jTtQtXr2IDHi4+yvrcn2nBoekbLGcGuV2vK3idA8mtaH7/df1d+f6yHFaBLg3lUOtuiV
	TU+9FHaSkZ8El//Y3Fz0ZtTBNIRzRw4/gLPA/8UfGDBmE9djXpI4IlOooWc74rsNJVcprMzC17VUI
	uhrxxFbxgJI/gwxBDoWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMqM-0005X1-1k; Mon, 09 Mar 2020 18:09:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMqC-0005Wg-5v
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:09:25 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A501322525
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Mar 2020 18:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583777362;
 bh=q/wjPXk98Iav4DIzjZvnbTdu8x7vxATKPEjPDGTAstU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=O0byU8BWB9cTxwxKIR/DT94PYb319NA2pgXCuq7JymyjeUEqpeHPxcZhvkFj03d0T
 AlYoQ2UZVYhSRJulzdi9jqLP1etTJ/Gc1UgjK5YNvGJpXW8Xnj8cL87r7jrIQFYQ7U
 19cissDSZ1NcIQqSLSi3q5IU6gchoZ3YEl6GKsfM=
Received: by mail-lj1-f180.google.com with SMTP id u12so6798110ljo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 11:09:21 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0QAzbvF/nleNp56z+yxkawA/hzWoeM/0Dq2j8vigg8xBXzjTwx
 ykeulPQgssm9ZXB8VjwJ8Rek3piLoilsSEivNlo=
X-Google-Smtp-Source: ADFU+vvJrwQAU7B4C8WmaH5AG9yytmZyVjiXSOkfnxp+sxppR9FpJ79hvOp43uNlfDtqH3N8AKoOz0WSuAzAqXGka5Q=
X-Received: by 2002:a2e:9356:: with SMTP id m22mr9698465ljh.201.1583777359739; 
 Mon, 09 Mar 2020 11:09:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200306102301.16870-1-geert+renesas@glider.be>
In-Reply-To: <20200306102301.16870-1-geert+renesas@glider.be>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 9 Mar 2020 19:09:07 +0100
X-Gmail-Original-Message-ID: <CAJKOXPeknZDrA7cXbznvrcCoV4hFfaUAtd6mzHO+dbepkzueQw@mail.gmail.com>
Message-ID: <CAJKOXPeknZDrA7cXbznvrcCoV4hFfaUAtd6mzHO+dbepkzueQw@mail.gmail.com>
Subject: Re: [PATCH] Revert "tty: serial: samsung_tty: build it for any
 platform"
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_110924_244327_8B392465 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-serial@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kukjin Kim <kgene@kernel.org>,
 --cc@rox.of.borg, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

.On Fri, 6 Mar 2020 at 11:23, Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.
>
> When the user configures a kernel without support for Samsung SoCs, it
> makes no sense to ask the user about enabling "Samsung SoC serial
> support", as Samsung serial ports can only be found on Samsung SoCs.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/tty/serial/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>

Discussion about removal and then re-adding of PLAT_SAMSUNG and
ARCH_EXYNOS dependencies remind me [1]: "[RFC] Input: tm2-touchkey -
add hardware dependency".

In both cases the driver is clearly only for Samsung SoC or even for
particular device, although one could argue that touchscreen could be
reused while re-usage of serial IP of SoC is highly unlikely. My
understanding, maybe not correct, of "depends on" syntax is a kernel
source code, building or running dependency. I do not see it as a
hardware dependency. Although Samsung S3C/Exynos serial driver will
not exist outside of Samsung SoC, there is no kernel dependency.
Unless I missed something...

I understand and agree with concerns mentioned in [1] and in the
thread here, that removal of this "depends on" makes life of
distributions and generic users more difficult. To solve this problem
I was thinking about adding weaker type of dependency. A hint about
hardware dependency. Something like the "imply" is for "select". This
did not happen, therefore I still stand on my understanding of
"depends on" thus I gave positive feedback to Greg's patch.

It is a pity though that Greg's patch was applied so fast while
discussion was still on going...

[1] https://patchwork.kernel.org/patch/9695769/

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
