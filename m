Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBEA1508E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jssZMd4ioBMRAWPNrwlqwMQjD5kBP/jXUYliwtQj300=; b=NDKBh0EBurC6i9
	wy3svwSngwOeyyg12GVvxz0Ue33Oxd1qGgehwJR7m4Z/mU3ajIXrqiXI6EhiYzixNFs3Cp/aR+0yt
	ELJGfjwTPtufGFAdjxxE4I7bfnfi5P4GAHmmyb32tpcCF9gU5HVR9cfg/3fsdQpWaqejn4IpCQgmS
	5nsH//bf1A6iQjawTLJICv3kYT6Fk5mnQuvx1QvdAxEGWijmXr1qCli9QlyLcktAC4IQZTyHeZ8lQ
	ByWYjrf0rgy3QmuTN6lRxZ6LFabdlSfdcAmbfD413UbMiEgDV3ZnESkrMcDM3KBFf2l1yucSvEtpB
	v0faekv7zD7nddBMYTVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydBX-0004OR-7z; Mon, 03 Feb 2020 14:58:47 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydBQ-0004No-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:58:41 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 6D376790;
 Mon,  3 Feb 2020 09:58:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 09:58:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=UdM+Slc/O+rORqRWT038kmUBeaR
 7sEVX6Zilo6E1Q94=; b=Fk0E8TfuBc7J1DA05FLClqHx2e5CcVpzjsufGJOJNuQ
 FHc4IdrV34Y+TYl/uXC+CJ9e9mvrJkFrsHnhmXlW4eGNVmumZ27InfAxoaAMXJxP
 VWs1NoXVo1PwQFapz4YVkv6vcz+/lSs81h6Ly1BGSY+ayono3Xr610L8foOuGSrI
 Sl3efc/s4uK2SHIjqge4GqRoDuaXfziexiU44allK9+a3WYXMsnq/GnCW9r2tBh5
 mnRT3ih/mTtlvG7DpIjtk9AZmL6cZjNLYUm+oShS/gqgWFiStucJHGpYkEqxNZLf
 mJA2o/HtlNqj8XJptBpXzyQw9UHG5+4vcjqOfAN2paQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=UdM+Sl
 c/O+rORqRWT038kmUBeaR7sEVX6Zilo6E1Q94=; b=BP6EjgtX7QZ36ZzYy+6laI
 Ox/n7CZH92SdCMfSwVSL7nTDCTb+WD2TNfj4cpsc6luO2Yz1oitQJPrxPQhoaDzg
 u+ft/+c/msytjFJ/qWxQHqFx/A7pa0cPZijTmwMdXvrmOTB1v4vITtW+UxvLFpix
 B4HOBxitJ9++9CPwl30iym31EP8VONOyO7jwalgX9m0lJrgpNfz0bxmlJh5fioDU
 S1EyTqZZtMnQ72ItF20UM8unlQTto/rlBEMbLDAJm/BgZUlb+vLV72GZ6ylZB5RW
 XsfR/YQzuXnT6CxNzOVpop5JbrxKh/qZ9ikApKaovV4uZpYrgY5XB2yFppFFu6IQ
 ==
X-ME-Sender: <xms:GDU4XtfUH4HfvhZbhxs9h7FGwjqPADbpyi1WADWcUy7mxdoiwxniFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeejgdeilecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepifhrvghgucfm
 jfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppedutdegrddufedvrdeghedrle
 elnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhr
 vghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:GDU4Xsc90Ofnvkj0W4zvL_5vsdcleg7bfvW54g76uT7tPN6GQnR94w>
 <xmx:GDU4Xjl1seuv7jUxRSd0ki5fvZgNu78yXiD5nN_OAvcc8gDCqGypkQ>
 <xmx:GDU4Xp8hkBstJNrGQ02faEDQUfy7qYhkRZSOX65vrBIhNeffJ6dG8g>
 <xmx:GzU4XgXV4PCCggqodEn3iKaMm9yqeQtQK98TlJRjqfli5iuj1J5Vfw>
Received: from localhost (unknown [104.132.45.99])
 by mail.messagingengine.com (Postfix) with ESMTPA id 858103280059;
 Mon,  3 Feb 2020 09:58:32 -0500 (EST)
Date: Mon, 3 Feb 2020 14:58:31 +0000
From: Greg KH <greg@kroah.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] media: si470x-i2c: Move free() past last use of
 'radio'
Message-ID: <20200203145831.GA3238182@kroah.com>
References: <20200203132130.12748-1-lee.jones@linaro.org>
 <20200203143245.GA3220000@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203143245.GA3220000@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_065840_610298_DD1F8E61 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 03, 2020 at 02:32:45PM +0000, Greg KH wrote:
> On Mon, Feb 03, 2020 at 01:21:30PM +0000, Lee Jones wrote:
> > A pointer to 'struct si470x_device' is currently used after free:
> > 
> >   drivers/media/radio/si470x/radio-si470x-i2c.c:462:25-30: ERROR: reference
> >     preceded by free on line 460
> > 
> > Shift the call to free() down past its final use.
> > 
> > NB: Not sending to Mainline, since the problem does not exist there.
> 
> It doesn't exist there because of a bad merge?  What commit caused the
> problem?

Ah, found it, it was 2df200ab234a ("media: si470x-i2c: add missed
operations in remove")

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
