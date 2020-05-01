Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FF41C198E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oj6AuHCQE3nSyMm+b2duBr2ky2eSCwUaxsnCZwxow9s=; b=nws21Daj8C+eYQ
	iR8z9Mkx/JaiGxMJX9lDb/sfEYmFJDIn/HkUni0ECkRXjgGaZ+FLoBJwfkaX3InJ3yoUJty2OPJJb
	cW8sgPExZjlrpuGCCvUXPIQGP1idVOXpfxxyTVEIUDjDKAvc7Twgca0Jhcqy8CKd+3OiFZsVeaa+y
	sTQqG0L+ghwhvy/S4pGa97Aloy+9MS0+f7f4MneqVqtP1T4+8hnOf/Eo+fJwlFr0YgEGuyYqescy9
	EOoG+6n31yWlHUthQJulx1tBogUM5hw9CKabf5IO6Ym46ctAyu8CCICiyHcWtP3ImZBlXFi12ARi6
	AMqMla6C9EfEfC/EtM3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXcC-0000CL-Np; Fri, 01 May 2020 15:30:12 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXbu-0000Ao-Dw; Fri, 01 May 2020 15:29:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0oFnvmjDPVBMOQrnKCtF1VSBYWpdcWGbY1ugeUjkCs0=; b=ZqncxFdWqbRuDkB4HOmtEjSR6D
 rRHaLpAOMIlNMmOYMWOBWBYlrQCFBgpdRwiZahZZkQ2XwCg6kizZiDRLGxISbUo/bRKYa2fLsL4+t
 7K5mZ/UMaLO+hEA08YH+8MnZGOK1cSfcLbm4/bRchTxDV1rHijO2JKDFc8PAiTEherfU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jUXbo-000YEH-9Z; Fri, 01 May 2020 17:29:48 +0200
Date: Fri, 1 May 2020 17:29:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFC v2 04/11] net: stmmac: dwmac-meson8b: Move the
 documentation for the TX delay
Message-ID: <20200501152948.GD128733@lunn.ch>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
 <20200429201644.1144546-5-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429201644.1144546-5-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_082954_465090_F6484DFC 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, jianxin.pan@amlogic.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 10:16:37PM +0200, Martin Blumenstingl wrote:
> Move the documentation for the TX delay above the PRG_ETH0_TXDLY_MASK
> definition. Future commits will add more registers also with
> documentation above their register bit definitions. Move the existing
> comment so it will be consistent with the upcoming changes.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
