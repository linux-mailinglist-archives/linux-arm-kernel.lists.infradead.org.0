Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92C04181D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Om1md+OXafUTmmQZlOuWlpy06excOxPTSIHdh4LXKJM=; b=ZlRJ0HpZMwfADb
	XFn3xYpq6CkUuet0s9OeTlycftAPsygSlcZi4aWNltYrptMNj30oPvrkTJUYTzr/Kd2QKhAFYx2M4
	nImMn1iiFPq82Qakvl66vks/tmQalczX6nhtShq+3SxkdhW7nd/xspI9vuhjMIN/iiLuAXE8rZZrt
	jFoT0a/roHWrl9laL5MykygSqJUWd9WMRphzllyxXWnXNub0MYnZudRNLVyjYNtsas1fMM99u+krL
	94copatONVnBnIpihpEe3DQRehVHNZ3Z90OiT8iM1bQcfJ2HzSrWumEGdO1msRoG2CBBalfZz7X/I
	Hofz29n2DeAeqig+gqXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapDF-0007em-54; Tue, 11 Jun 2019 22:25:53 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapD6-0007dc-4e
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 22:25:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1560291939; bh=u1xRqcipnjQfdrJT1iMxqmCOWzuFT5iSpjmBJ/NwAng=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iUogNK2F3RyjngMx4djQtjKewbxnn+Nvf/e84Jaqj+b4bz0KfhOo3Ucmsc62ArP91
 AnN9RXuB+r50eNOnii91OJYHduVuqj5nTyOUHPDIYkXghBU6tFTYtNYz9GqOvxApED
 F0Y3GKdyuZXdNlSiqbjhmi4AahsEzFRbhTeWdtDA=
Date: Wed, 12 Jun 2019 00:25:39 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v6 4/6] dt-bindings: display: hdmi-connector: Support DDC
 bus enable
Message-ID: <20190611222539.msviqrbptjd5vdji@core.my.home>
Mail-Followup-To: Rob Herring <robh@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, Jose Abreu <joabreu@synopsys.com>,
 linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
References: <20190527162237.18495-1-megous@megous.com>
 <20190527162237.18495-5-megous@megous.com>
 <20190611215206.GA17759@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611215206.GA17759@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_152544_353447_1F020466 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Jose Abreu <joabreu@synopsys.com>,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 03:52:06PM -0600, Rob Herring wrote:
> On Mon, 27 May 2019 18:22:35 +0200, megous@megous.com wrote:
> > From: Ondrej Jirman <megous@megous.com>
> > 
> > Some Allwinner SoC using boards (Orange Pi 3 for example) need to enable
> > on-board voltage shifting logic for the DDC bus using a gpio to be able
> > to access DDC bus. Use ddc-en-gpios property on the hdmi-connector to
> > model this.
> > 
> > Add binding documentation for optional ddc-en-gpios property.
> > 
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  .../devicetree/bindings/display/connector/hdmi-connector.txt     | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

Sorry, it was some mistake. Thanks for the note.

regards,
	Ondrej

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
