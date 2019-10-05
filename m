Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4028DCCB3D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 18:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5oX//kyFGAoUnz0jKBNF6aASUFOSteInMlMiU4gYRA=; b=Luibd4Uq6UR7A5
	8w/TKB71/EI0vWkGDJ+rv7x9NOL41TlGgqP55nYINCdyQCRK06S43kWNqKRzPfsa84keT0qdguXGO
	3iQmBB7l/iqFGKMP6m4YBX4TiwW3WV5uJcVGgT7LnlLye9nTGFZYkyI8XKwDWyBrZObdSG9pSc2UP
	FZ6OWh4sPptBt+nZOwvCQTGJnI4ctiTWAblpTHqGc4DG6xtuZHdu3NIz+YBfZyTS2MVWUEe1ICYPa
	rwR1iVz5rW0Wfmy3YRI2/EoCFNLvDJYdtp8dgdNic/asPmA+Y9Ty/vwUS7gusFd0+DJN3G3jBol/b
	PHycIekGFKeI0BxlCQ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGn44-000712-G1; Sat, 05 Oct 2019 16:37:52 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGn3v-00070b-R3
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 16:37:45 +0000
Received: by mail-lj1-x241.google.com with SMTP id j19so9545047lja.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 09:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=prTkz2BDct+kznOCTl84BP6+isxcds/VL5wpAYcwHBY=;
 b=m2jT+U/AjYzHW1iLL25RrSATBB+XM5O+wb9pHkyxDDzOz+5wGDsqcWYu+xHIj20FMA
 Xwu2HpckrIcTSmbFz4sWXa/wECnqJsrKouRHo8gp5QslS74mYPCyeObXJ6VxItdD/YOC
 ce/yz+2TEzQmEUTxeWuakUD29l/+b5pbv0n+t/YNdn7lWrpgzfmUjaLRamPvaA81a1Zs
 bTJLBgiswBGT+nqqJsALx6ClmKePzLHjFXqbmXRXKl4a6OgkzLIBLODmJg58g4XgC6Sg
 0fJZ8c+uj0/bGFwpeORcThh4OgIe4OKl4jO0bbkLdQx7LlUw15JmDX9Am5AL/OoEzK8b
 kTsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=prTkz2BDct+kznOCTl84BP6+isxcds/VL5wpAYcwHBY=;
 b=d6tZUpLsytyaWWOLFrlxWoWKbrFa5KFkTD5i6/xXKnP3zDcHg7A84NCSvY6ng8a2D2
 rNPgww08mmcH4al6JOUWkND4d7BOqjpuhNDsvwuWSrufntEVs58dcda8NApGRQeDeAry
 NzyNVCyHOyI/Ii1SrR8iw06au0OtZYH7WnwpmkDm6qsJfCHgBsQABIT4ZS6tGeB8Gem9
 Ap00V7/ufYWPjzPfys89Jk4L4+DSKfjzYllwpDqYTHSQbS61bYGwkhapp6mQpb/iEBEf
 4/2qmjJFRBEfAa0r5zHWjsvG/PNubX6QTFHQsORwFM4s0r2aPE//a25Y3lzohlOuyhUM
 v4gw==
X-Gm-Message-State: APjAAAVBAqm0y9JO/YCUisWvwAitP1a5/IX6FsLJNQpZUqhD3Nwz1hFI
 hars1HlLFclV5avjIkR9a+q3rh7hq/MhL1t2pcf/Ug==
X-Google-Smtp-Source: APXvYqxZDMfqx8V17O+f48DGUFf1jTMmQs1PnbGuYwpAD58xGCuDybqkY6PymiQ5pg31cLHibQqXMFRqO2iNX6kIrBM=
X-Received: by 2002:a2e:6344:: with SMTP id x65mr12909835ljb.59.1570293461231; 
 Sat, 05 Oct 2019 09:37:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 5 Oct 2019 18:37:29 +0200
Message-ID: <CACRpkdYuJgjLEbYVA-cVxyy6v-L8Hnf2kmZt3S72nFQnrrzMmA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_093743_884336_10239DBC 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Branden <sbranden@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Li Jin <li.jin@broadcom.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 2:03 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> Use the dev_name(dev) for the irqc->name so that we get unique names
> when we have multiple instances of this driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
