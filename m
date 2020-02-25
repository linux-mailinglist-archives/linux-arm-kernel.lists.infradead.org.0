Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF3516BCE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hmwlf5kkYGzXoqONf0sFKZaOqQYGnG+B4xIYyGXHPh0=; b=F0QEKSp9bGKaZz44b1+ZmVPNz
	eWJ/s2e6hg7pBr+SkFo7f0vyS0l4dVDxCOCz8NWcmS1RBR0XJZcrOH17yQQB0DNpHPAMk24YdxLbo
	qcQA+4X0UO+XTmqKvS5o+WteizTSQ2uyFjMJSXb1HYR2uTYh88ROmQNuUBJkkGPK5EF3x+zLKt88Y
	S+mmyp64fIvIjzsBpVBUBBJOsH7hOZ8onUCPl38V5p5fSbAHgpV3aIOgmlLOHh73kgZzpS6fuGBoU
	XodMxxLbzgUgGTBsacn0AhX/CctnSAvZjRQcwD+0En5zGBqIvdoNmn3agb4KkMOkqUAHKsW9MVFvR
	NxNxPFaaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6W8Y-00078Y-7B; Tue, 25 Feb 2020 09:04:18 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6W8L-00077i-Ie
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:04:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 8FFDB21EBC;
 Tue, 25 Feb 2020 04:04:00 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 25 Feb 2020 04:04:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=2Zvs09Vl/UYujmnVDynzfLV9hO+
 fd+xfdqwQYudwPCc=; b=Yn6KowkdUwT0VqWf/MJ9DQakk/G5fNFP4BkOFe0vD4A
 ZYr1w5Xb0SggrkCKRlp2UVhsTlmNxJx/XxvjzPfNc6G0TPWyLylYxi+uC50el4cS
 w2ox+yD5/ykNMx21dPm5AYptdPG5Nz3KSVgKmQINg6PWVElUcZyGBO2EUVRDTioy
 MYZIjOUjJHUnm9PyUQQEBHlnALD53j97vMsC4/z7nwqsHo970Noi99kJAhh0fmuu
 U0f3EnYNg9O5ZY43KvFKWIN4szNnsZ1EkkMlqIR1IDWt1nEXoqnQD6E4HnYRn4w7
 k4/CcEa9rpANVbKxsz6azTkP1tY/k8JlJ+U7cshg+4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2Zvs09
 Vl/UYujmnVDynzfLV9hO+fd+xfdqwQYudwPCc=; b=K2yB9v6XQtL0TrayaIP/2E
 nnB+g/wxKMk+1xjFZSgFpzuA64H09Kp55s2yVp2Hn3jKeilHZEywqVOcF7D2vsAx
 u3UAxu4TIqSb7SqFVjuPYxw7Z0eMN7JV774XTiMBHZLNfowpKXEYoFyDrqXGIQBC
 UHoScd/6jvKp4987la4hWn4zXSigPeTqcm33iFjuY3cqdWFcpGNsEXY8c4O30j6N
 jt2oM9wjyLSIuBMuZw1Rxv/ARTlOnRZjrD98e7xi45Oxe1KHNyiLVHMKmlawQSU0
 W2o+f3O71BAlePMdZO8EKofNhQpMcgTVrW/kBEWojXUoncW3bYSxCq7nBSNR/H8Q
 ==
X-ME-Sender: <xms:_uJUXlCh71bxJbYbFHugbZU3odKX-hKxNwctlFRfFq6ILv-M4Ir5DQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledugdduvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
 ertddtvdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggv
 rhhnohdrthgvtghhqeenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghruf
 hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdr
 thgvtghh
X-ME-Proxy: <xmx:_uJUXvPcuPlV0WFzgTZ_MY8tXjFeknheIgDCR2Jab6iPumnOWGXQHg>
 <xmx:_uJUXkMDeI5GOZjUGOSG5U6mNyyjmTLMKi9AOaoIr36x7ZeIXiasxw>
 <xmx:_uJUXgBkzYTjNU6k4lE2DiYEQUoFxDSBReTWfnawauerN6tPWx30YQ>
 <xmx:AONUXuygK_TZiGFIYVCchTeo0MNGTB-Gt-ohsYSMi_6B0unIiQ8nNA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9F66B328005E;
 Tue, 25 Feb 2020 04:03:58 -0500 (EST)
Date: Tue, 25 Feb 2020 10:03:56 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h6: Fix PMU compatible
Message-ID: <20200225090356.hc6pqfl4cvvamciw@gilmour.lan>
References: <20200210095600.77894-1-maxime@cerno.tech>
 <20200210095600.77894-2-maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <20200210095600.77894-2-maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_010405_756307_49288840 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
Cc: andre.przywara@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2937755383950715297=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2937755383950715297==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oiel5nhcas7vsv23"
Content-Disposition: inline


--oiel5nhcas7vsv23
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 10, 2020 at 10:56:00AM +0100, Maxime Ripard wrote:
> The commit 7aa9b9eb7d6a ("arm64: dts: allwinner: H6: Add PMU mode")
> introduced support for the PMU found on the Allwinner H6. However, the
> binding only allows for a single compatible, while the patch was adding
> two.
>
> Make sure we follow the binding.
>
> Fixes: 7aa9b9eb7d6a ("arm64: dts: allwinner: H6: Add PMU mode")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Applied both

Maxime

--oiel5nhcas7vsv23
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlTi/AAKCRDj7w1vZxhR
xd9JAP4+gxUBt+p+jiRwUbeiamAYk0/qb1hte/bfgmfeqLW1bQD7BtPyhwgcwn5F
aZsKfPswMITCQhDgc1ondWe+m+gbuQA=
=HOEj
-----END PGP SIGNATURE-----

--oiel5nhcas7vsv23--


--===============2937755383950715297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2937755383950715297==--

