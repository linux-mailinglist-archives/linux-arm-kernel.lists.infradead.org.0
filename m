Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBAC1A950
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 21:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phuHJGO+89eu8raDxui7JzJCPWPZsZLRgA8DrbNlztU=; b=bHbReJi6gN+7bN
	B+g1GXzmFW6ZGifpQX4fJ/xAbXu5reFk01kkGPGh51Oy6bQ/29uqhPxOpjgUVJY0StHf6FVliMLC7
	TsNvNZwPI4qcDBX0TUqH/DqKPHYuLiF4gjocwBgxa53SLS0nwAVCCmNNDQ1SJ3tk8YxQf0LYTJFx8
	linu7kZu+ndNltDcxOkLsbch8eIHGt8UrD21ytjAWHBkp++HD/bEoQoqB92n5DTvULXUdeVoiAtZd
	OqoGAmjNnUoOFYD7YgrPJDzTttnAXfMOUcqok/agoW+NdRh8Y2cGvD9TzGO2DhPsy/hsbOjWyt6Vh
	uMLmjqV95rXPEyWrE0bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPY2Q-0006yc-5r; Sat, 11 May 2019 19:52:06 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPY2H-0006sl-La; Sat, 11 May 2019 19:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VG2yTD+3xTD/lCdbsfLUdnozxfIXWImi05fuOhNelsI=; b=A0FLOxsGDhE132dHk+ANiSr+Of
 y5fR+E5D2ElZTUeFSqT+oZzt+RnybP0qzb5B3vd+OrQdwb1qCeCM2goXyaaCxjqpuOZDynp786UT1
 dL81W2XnvCAsLpxFIh9u85tca1ol0B6WVqdl/6oU02bJSjQfFH8MnzvVLB3rkKFXpA7g=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hPY2A-00056C-Pe; Sat, 11 May 2019 21:51:50 +0200
Date: Sat, 11 May 2019 21:51:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: remove ethernet-phy-idAAAA.BBBB
 compatible strings
Message-ID: <20190511195150.GI4889@lunn.ch>
References: <20190511174534.2403-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190511174534.2403-1-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_125157_854110_2EDF8E78 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: khilman@baylibre.com, devicetree@vger.kernel.org, jbrunet@baylibre.com,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 11, 2019 at 07:45:34PM +0200, Martin Blumenstingl wrote:
> The Ethernet PHY documentation
> (Documentation/devicetree/bindings/net/phy.txt) states that:
>   If the PHY reports an incorrect ID (or none at all) then the
>   "compatible" list may contain an entry with the correct PHY ID in the
>   form: "ethernet-phy-idAAAA.BBBB"
> 
> An older version of the documentation suggested that the compatible
> string can be used when the PHY ID is known.
> 
> Remove the ethernet-phy-id compatible string and add a comment with the
> PHY ID instead.
> This is a no-op on boards which are shipped with the PHY that was
> listed (= all known cases). However, if a board manufacturer decides to
> ship a different PHY we will now load and use the correct driver because
> we ask the PHY to identify itself.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
 
Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
