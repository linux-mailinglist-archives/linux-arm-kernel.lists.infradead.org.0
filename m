Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216E51AB193
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 21:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yd+0IepDLUB/jV/uZ3mLuiKfHm3CuZJgNgBBvzuV7Fw=; b=J8lbVoBpsgrs6Y
	MHEMh/PhRga8CRcAwBHZziw72agqWzCmszwvaQVyfD/BdZsYiB1c/9HOMpFZqunsXeRk0uTQPxJbU
	ZtgbGj7qNvHX+XW/Qh8gR1kTJTVs2MCgfn2+fjkpq9wFzFFJI+xyac0aI4o5nx/iDio/uDMAt+Vf9
	NGD8RLJWNkXwpYT4P8npNN2kOeE2/3s/KYHf3C9qp5J362GMgCUs2ACwfHmwAIKF9tDxDWnW8ya9D
	W7q6vMX6CCcp94Ocq5H4rmAncw6UZPWfb9TAv0+Br2iCPsb8bd1x7E4f/+dJkaqrZvdhha8yAs70c
	iWSit50IoJ6JotGev/AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOnhB-0006mp-R3; Wed, 15 Apr 2020 19:27:37 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOnh4-0006lx-Ef
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 19:27:31 +0000
Received: by mail-lj1-x241.google.com with SMTP id u15so5035144ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 12:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=47rQ3+FA2D3LJs/1g842b1siYUlXkXN6VqdcwjogJq4=;
 b=Wo1kcmGuq3Ni6b11dpMKa6BWqZWI7iFPQlOO6XuZ3kg2OCLqLnmtNfu/sPcqyQWleQ
 4kwKK+VMgYzFYdxJ4QOKV1lSoP5aiyMIxTt1Z4+BHUQSigz2EvLFOQ236TFdusZts2ds
 q5Lvj/WIu4fTVBFN9XqTbFE7NFuT0ZH8UFj+g2N4AqQpg7WE2r2PubGJJgFxnTUFSmID
 WXmSW3k0PfGfoHcO8D2QISDIfsCoPmKaCbNaWwQf4vfqmqkPHofAM85BoL8eQcsSqdAc
 npOQPuniuxgTHrChKAuUdhvgl3qrCt1b6ukw5j2mIEa3myXxAd7/+N7aeHKUn7xr2pI3
 1BvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=47rQ3+FA2D3LJs/1g842b1siYUlXkXN6VqdcwjogJq4=;
 b=X6naQNPbtdG9BSLxLbUEdqRgQjMR1PSan7bRduvn8Vuy/rhxjFqEf14Vs16VyT6JqU
 f/aNlPIfJVfASrkjYeS3Hu8ztaipxyRNu1ObI3FmnpL3kMir6DNlefNskiwzoQ7rBEX1
 RDPNgxDqGQRpr+2gYNwUyqiac8h+7GkCWKEmEQy+g+Osu0OCIA60pPRU3Od0KyCjFgoC
 m1ZUdkGQ+xDQ0TFB1ztGPIo/n/LuMyAcZpXbzsN+4YPU6uEcx6sPvKPncaf6grbLsLzo
 MUpuiYzbLUpdE63T67mbAk72YZVs6lIhKic4in/Wf4bya3PRL6MzZAQOH+d8Yd+aqj/N
 H3QA==
X-Gm-Message-State: AGi0PuYQ3AP7Tm1BK5QQzSjqo3msH2Dj0GZfCtR70WcUlJdJRvhDo8jf
 bGjEhdCPWmSuYsqWHn+Oh3kDHCQ+z5u5oWEpiq4=
X-Google-Smtp-Source: APiQypJfKLCHWzDvZAs+sC93xTgAqt8ibneXwnMKrWfuDDNeT8PGQvOG6N7qZNWFRwp0sNft7o5NTBLjkEGHEpe+nNI=
X-Received: by 2002:a2e:9b4a:: with SMTP id o10mr4114274ljj.117.1586978848666; 
 Wed, 15 Apr 2020 12:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200415185941.13956-1-mporter@konsulko.com>
In-Reply-To: <20200415185941.13956-1-mporter@konsulko.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 15 Apr 2020 16:27:52 -0300
Message-ID: <CAOMZO5Ct+cpdvfTEvk1PtQpScJM4iyoMFyChbtGromvuAV291w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: specify #sound-dai-cells for SAI nodes
To: Matt Porter <mporter@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_122730_515124_075840D1 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matt,

On Wed, Apr 15, 2020 at 4:00 PM Matt Porter <mporter@konsulko.com> wrote:
>
> Add #sound-dai-cells properties to SAI nodes.
>
> Signed-off-by: Matt Porter <mporter@konsulko.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
