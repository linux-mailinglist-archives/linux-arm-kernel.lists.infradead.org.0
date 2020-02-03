Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C571150874
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:33:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtnDm7UU59UNXw9yP/bR38o7Um30ZvJ/IeKC0i+g9W8=; b=JsVhofjnPUB+zU
	xRSoSdxjHCL2lHamZ7OhZZArkLD66XD/n5E9UGvU4zZWKcSNgkw6HJV/2lDHZgb3sZI0mfAgg+EYX
	zMF5LfcQTfZz3oL4UkTNOUlidUf8IBIR5gP3YI+RppYtwp97CY+OZ/nIf6zB1CszzjREkV4ZZzuco
	ZyRSSx6+oAtvHBDFAEMbCVaO4Yzru7ZwsaxFqD9JlyjOpHBETMA/WFyZdtKbx5BFtJl0Z2SBU4GuH
	E67mLNJzoLuiUiVL/wyBlu48N0Os7wd2Bdmhn1Ed3rAIRuidpSWCTpccXpy9I6mB7Yso9j5Hk6vKY
	pIHo62iXJEQJ0/fw6rvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycmc-0003yC-5o; Mon, 03 Feb 2020 14:33:02 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycmU-0003xI-NI
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:32:56 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 029583F4;
 Mon,  3 Feb 2020 09:32:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 09:32:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=dVVz8f519a/6Wo8ts1nwJdClp2T
 55/rafW7s+KHqhnk=; b=SlBpQvhnkwxNQA5GVKfPFpQWwmfTPrXfHNdEIHnAsZW
 MtKJWd4jl8+GpHZ9UHOTUaTKxThh9mLda3lX64ofX0HmtqbYjTjoEDwBwtrNkMg7
 FHgT+xL8BwI3FOQxFMTiYn13EB3vtZV78dfjbw8NbDJuwZk5tefF9yQyFCouuRab
 adazfnEjP0k2+nhutWNM6OzdnlwnCaysFKxT5j/o5fgr3TcCCA6qJtphGJ9NHSW4
 kPCctvGJnMH6x2PjoYZ5Vj3nDSDLWl6JVXIM1Fv43YfJuuf2Lk0CRiYnvFMR0OX2
 n4eQermht+9JlBf+kIHfudvFrUMGiGjpjjbgnb/8f9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=dVVz8f
 519a/6Wo8ts1nwJdClp2T55/rafW7s+KHqhnk=; b=NMP4CvD2dEKlRVY61F0dj7
 s+rS+cWGv64+D9GiMtiK/1nzLJ2EEsQVgDW8KEi58ThRygQV11QyxrW8DTKzK9t/
 55+I0pSxX9AR0W0XffGtkq+oGPSN+DDxuLcRujkLjL8X3uRaKrA8Yhtl4d7ckGGv
 5Y7H6rNz/T3pTl7Ib2mU8qg6+AfxAyKY+U4+y4/3aEysSH/8TbFXubKRnW03O83A
 xrFjyasRy7+OvJYhTbgHM/apBCc/rTsRVZOHZmEXWyoGtTm6k+CBrsdnynghXiDs
 h85BScVYvt7A9QAZH8F0KV1vKTjgWnWZjMb5T2uKhDoLHWuMbjffpsBZooBm08jg
 ==
X-ME-Sender: <xms:Di84XqpXYxZMELaRk04HUTZm9NHN_KOV8aBBX8CMmRuAVBKctR0KVg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeejgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepifhrvghgucfm
 jfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppedutdegrddufedvrdeghedrle
 elnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhr
 vghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:Di84XjK3grCZy77gWAA6kdg6_1Ss_WliCBZWb9E_jht_IrnA_hIz3w>
 <xmx:Di84XsKJfBy5uGKmA1wLtLu-K1tPTmjycah1esfDzv-IvY221vTnKQ>
 <xmx:Di84Xsm6D1vgV6651xG1lgonpuB82Guy32jcgrBxL_0nRj8W8Xf6nQ>
 <xmx:Di84XuYQxHkaQ7Cf3f8u6I4zZl4KF33PHopm_Mx9xK-f-GQJh51iVg>
Received: from localhost (unknown [104.132.45.99])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3919D3060272;
 Mon,  3 Feb 2020 09:32:46 -0500 (EST)
Date: Mon, 3 Feb 2020 14:32:45 +0000
From: Greg KH <greg@kroah.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] media: si470x-i2c: Move free() past last use of
 'radio'
Message-ID: <20200203143245.GA3220000@kroah.com>
References: <20200203132130.12748-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203132130.12748-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_063254_780708_505EC426 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
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

On Mon, Feb 03, 2020 at 01:21:30PM +0000, Lee Jones wrote:
> A pointer to 'struct si470x_device' is currently used after free:
> 
>   drivers/media/radio/si470x/radio-si470x-i2c.c:462:25-30: ERROR: reference
>     preceded by free on line 460
> 
> Shift the call to free() down past its final use.
> 
> NB: Not sending to Mainline, since the problem does not exist there.

It doesn't exist there because of a bad merge?  What commit caused the
problem?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
