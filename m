Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B456B840
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Bc4m2lL/oER+U51JyfrE/zon55ka10rC8Q51mzQXws=; b=mwCvNuSHRc1/QP
	kGrhupABySZGy9p0v7EpiUQUoEtyhlq1n+xLja0CvIDolACMII7JqdGt8R6xVUBD2Jgf6hx8N4+vi
	hrXfFLArJMUJvHvUJVr7sbMijbyApbqQHLzINp2BmV2RHToI8lLjIcO7SqG8SK9uS20AhzVHATgUs
	4QN/55bSF3XvM+GgoVy7ESTMdYhDmukqFY6j0TFGkv7wFBTSjcHPXHFnUPGFxqtgzlVhkjLHHpt4k
	t2Hw/5kbrVaiIo65h+LQ+Q76udirKGXOZmWWBchwOjFT3G1ju3Kg8M0Pl9YNfP9zKSV0vwjajuag6
	AborhaJ7bkrWegi27+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfNu-0004d0-SJ; Wed, 17 Jul 2019 08:33:58 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfNW-0004ZJ-SA
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:33:36 +0000
Received: by mail-qk1-x742.google.com with SMTP id a27so16824042qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tIm4KlLOoNVt9Pt6U/trSBmscVAnv1Ig8wWdGFQn/hY=;
 b=Gc2p+YiBGXCJnt1XJPMRd37VRMz9i9aEmp0M74zhniTKsjfTNV4cAC0ce27H/H+OED
 m/sD0e/q92iRLFlM3+ydWCz8wgiFbEDb/e8QnpHjVEyGafhl1BFjOGNLOVXMPF2Tk8CD
 viM42PTWZi74tlZHt9CTk7VI1yTtFxwBzn0agz7D+EcfOk0C/PBh5unBxDp2RXiy+nFf
 LGz/yypuclxQTdhBBemaEjGItkO6VLtXaqCVKVARGvo4W7ciFR5Bsc3L/XELIXWJ1h2+
 TLVGVgeX///EBiaOCE9TMgjrKSQOxqCh/rCJG+bKJU3pqi6wZrDqPOk8RRWun2eK9Bi+
 tXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tIm4KlLOoNVt9Pt6U/trSBmscVAnv1Ig8wWdGFQn/hY=;
 b=UPIir1vSVw9M/eSqxowsuvcHhvB9uj11H8R9G+a268BKpNCUftn84Qf/daMOTJH+e6
 thdJJw+7fNajSkR5IWZwbq5XQJ9JfzZ/gmfSbZq2ndcYstnZoViFcUEIf3J9zEKbtPoK
 fq861QzNk/sKRfaDNKLBA3Jfj6jGyZ7DOWxYr+Wt76rl64fX/8wV6uvnkpUmojyGvRXZ
 ZWOXYL6sXE2MD4Na4R38guTxESAoRLOWFrc4MBBY8R8udDbshuJA+jOrWMyNLc/pK6cM
 QTGwjNQ3rVVuTO+ugqydzM2Ledt0VfZcO2Rm/vci7z9V6rLsG/i7Bx1aln52xwcYXjYK
 P4EQ==
X-Gm-Message-State: APjAAAXYKmAQzMw/xuMk8OkfLjBrRrKJWtZDiZtzfn5JNq/7h2yFXVec
 HYe5lFw8p23nYWjVfpcYXFyEmLRRGbCcakserdQ=
X-Google-Smtp-Source: APXvYqxuYM6/C+OX9eNQbUfcLHpDXFqZ1XBtFE9lSmnzU48LoWDVyYEmqZVWCU/md+siv1MluEqAIxuKDWVy5k3Wrho=
X-Received: by 2002:a37:4f16:: with SMTP id d22mr25526429qkb.307.1563352409491; 
 Wed, 17 Jul 2019 01:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-10-git-send-email-aisheng.dong@nxp.com>
 <CAOMZO5DZDX4hGmLLT0+5e0VDhws-DknhAwyKyAxva8x5F2BYjw@mail.gmail.com>
In-Reply-To: <CAOMZO5DZDX4hGmLLT0+5e0VDhws-DknhAwyKyAxva8x5F2BYjw@mail.gmail.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Wed, 17 Jul 2019 16:24:33 +0800
Message-ID: <CAA+hA=Sy3=6VF1eZJ-g_nhqbpCy+td+VEOUUK2pLrZAQpbAcFA@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] arm64: dts: imx8qm: add lsio ss support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013334_921397_ABC302A5 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 3:30 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> > +&lsio_gpio0 {
> > +       compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
>
> fsl,imx8qm-gpio needs to be documented.

Yes, as documented in cover-letter.
Will submit in a separate patch.

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
