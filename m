Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1F51664E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bHYNebbWTeeR3C1LUosWMamtOV16I0lBVTFiLUmGoLU=; b=d4iK/307iX4/Bdu5EPSD8c+CI
	sO6B/9x+M/8eIk46YeknVZGEUqxm6fXYbmSuNWJ6qYHU+eK3APN8YAtTABmg7wqLsbl3fJOEdkUJq
	SoQEOP0fZ+i7A1yiG3fAV8MlvkcxRHgIuArpf147KHUu12PXckBPaF+gYli+yAK61vinboH+QLDME
	aXVla7XOcc2t+7gdfsgQuF8hX8koGy9cp3FvgxVHoUP+cFPhet0zdaEnxh/A7Mgd4kAFCX5upzb7g
	SXxV5Jz8osMgQqL1REv6tmEGEA/TLwQrkaQ+E0vZfr82kLUBNQb3yIiozqEBop49q1Z+pD+inMCAY
	xNbuqb8uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pgZ-0003Fk-Fz; Thu, 20 Feb 2020 17:32:27 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pgP-0003FQ-F3
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:32:18 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 862EC21AB4;
 Thu, 20 Feb 2020 12:32:16 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:32:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Ay1v4I3raYISAcTCBgfWLbl1z8B
 K11fKSxA2zB0pXj8=; b=yw55C4gff4dd9drT8w4Q4u7N5Q0zhfB/9hoHZ9XoGyo
 v6CvPSkKBlPsnJUEbiS7GM3aoW/M00z2cOAH3oPEFUQoHnG/0l8iZWC9dDMFIFS3
 05ThvLt6MoRFpnwkuhQid6gbuGRqunZ30CnB4j/iqXQ2xSldiUmYLvGwaR6tOzVR
 VOk+FezMjuKLib5pfMtUBIZhXiASx/XXMlBKzKG4OG5E+u6gUIX4ftDpy1F9UaKD
 Dg+22JbBeEi4cm1L3mS3W57vWwkZTuqCM7NPenF3obLADklU0RVv4nNO++h7bcVN
 fbqxjx17pPzjxJV/jGrbVaX6h+rxE3L3D9xAu6Syxag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Ay1v4I
 3raYISAcTCBgfWLbl1z8BK11fKSxA2zB0pXj8=; b=E/TUP4W+gjBqbTrrQTK9Bu
 tDzxiE2dMHFS89Zih1vemTPTbpLx0Tct0H3CeUFVUrJO1yioRS0EFTpaT9ntvJ/n
 Sudrb1k8R5xNu6/8FVA//vBjJ7iDa7E+W5MPN9VJVEnXMGFxZASPSSZ1IxGVBSJ+
 0+qlstr/Fb9xoNc0zuh669UIfncJ0E576HjsYEzMSUwtXi+lxyQWMz0LuDvn4AqB
 e7nLmB+HD0bDzi1X6MIKLAo0kryLjI18+02wh8kfOtdrQGe5cfVy0VcBSfbizK0W
 Vwsrvl2Hw3cV0VjVbNmhR8Rd+muTsGkdl12xcNPfjSPrlKjjUBPwUUDEvS89LEng
 ==
X-ME-Sender: <xms:n8JOXiiM3A93u8SHlXFFgbUXnF_UIDzJwFk21GT0a1-b02RrIs9oPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:n8JOXutsVth5QITUpKCPwf4NneECws8jZhZV7sZT_zKPzNvUhZD53w>
 <xmx:n8JOXkzbk5FwE4A4CRvAWtmTpMqGV0lWN0158ZgAFwfjrlphgGXjhg>
 <xmx:n8JOXsPuNLMWK3osy2RHvSstRaz8-b_fXGxZDpoK9NJ8WF_CQ3vYxA>
 <xmx:oMJOXiPuIzLV7FPq6YQRW6ykLphRz9PNUiz-4au70YZJ0wAd8FPGUQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 450D2328005E;
 Thu, 20 Feb 2020 12:32:15 -0500 (EST)
Date: Thu, 20 Feb 2020 18:32:13 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH] bus: sunxi-rsb: Return correct data when mixing 16-bit
 and 8-bit reads
Message-ID: <20200220173213.s2ytf3zdi6q3bxli@gilmour.lan>
References: <20200219010951.395599-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200219010951.395599-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_093217_672325_A39A695C 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Samuel Holland <samuel@sholland.org>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 linux-sunxi@googlegroups.com, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3651013201833824952=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3651013201833824952==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4qmk5mkxpxvl2c2h"
Content-Disposition: inline


--4qmk5mkxpxvl2c2h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 19, 2020 at 02:09:50AM +0100, Ondrej Jirman wrote:
> When doing a 16-bit read that returns data in the MSB byte, the
> RSB_DATA register will keep the MSB byte unchanged when doing
> the following 8-bit read. sunxi_rsb_read() will then return
> a result that contains high byte from 16-bit read mixed with
> the 8-bit result.
>
> The consequence is that after this happens the PMIC's regmap will
> look like this: (0x33 is the high byte from the 16-bit read)
>
> % cat /sys/kernel/debug/regmap/sunxi-rsb-3a3/registers
> 00: 33
> 01: 33
> 02: 33
> 03: 33
> 04: 33
> 05: 33
> 06: 33
> 07: 33
> 08: 33
> 09: 33
> 0a: 33
> 0b: 33
> 0c: 33
> 0d: 33
> 0e: 33
> [snip]
>
> Fix this by masking the result of the read with the correct mask
> based on the size of the read. There are no 16-bit users in the
> mainline kernel, so this doesn't need to get into the stable tree.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/bus/sunxi-rsb.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
> index b8043b58568ac..8ab6a3865f569 100644
> --- a/drivers/bus/sunxi-rsb.c
> +++ b/drivers/bus/sunxi-rsb.c
> @@ -316,6 +316,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
>  {
>  	u32 cmd;
>  	int ret;
> +	u32 mask;
>
>  	if (!buf)
>  		return -EINVAL;
> @@ -323,12 +324,15 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
>  	switch (len) {
>  	case 1:
>  		cmd = RSB_CMD_RD8;
> +		mask = 0xffu;
>  		break;
>  	case 2:
>  		cmd = RSB_CMD_RD16;
> +		mask = 0xffffu;
>  		break;
>  	case 4:
>  		cmd = RSB_CMD_RD32;
> +		mask = 0xffffffffu;
>  		break;
>  	default:
>  		dev_err(rsb->dev, "Invalid access width: %zd\n", len);
> @@ -345,7 +349,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
>  	if (ret)
>  		goto unlock;
>
> -	*buf = readl(rsb->regs + RSB_DATA);
> +	*buf = readl(rsb->regs + RSB_DATA) & mask;

Thanks for debugging this and the extensive commit log.

I guess it would be cleaner to just use GENMASK(len * 8, 0) here?

Maxime

--4qmk5mkxpxvl2c2h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7CnQAKCRDj7w1vZxhR
xYwdAQDlHMlf/FdIX+Eumbe45KdrYyQhhaHzGmbiyBwtrtgxMgEAnMJqK4ffi3Lb
e+5SIgZ8ZAhD5GxFQ06Ui8UaoF4B+Qc=
=g9qg
-----END PGP SIGNATURE-----

--4qmk5mkxpxvl2c2h--


--===============3651013201833824952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3651013201833824952==--

