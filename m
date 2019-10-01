Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0743C3432
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D34PeVc407gxRKTrI+tgirggWEoyk5UAeNUNyTc8npw=; b=SvDcawNTCv3l3u
	u5WwMyS0LGWI5cROML+KWr7uoMbMA9BJMO5faB6FPmypcPJmIIIO8c4sCsf0TwFrj4Jp3y0P52OhF
	SUD4k097heHmmpOlyPYOFQ6b/OZ+CpDc9CA8UhdUxJ/F3Ifv5XpHN1C8eC5AFjMg0aUkh1uObAKG9
	xQITGrIbGT0liZa+hSVVUVzjj3t17oL5T+SS+5SiGsZEKdc3tL5WzuyrVtZEhi9TQZfJ6dQ5tIUXd
	SHXw1ozKzfOVQAKl2zRotKSOEqRMtC4ug+NFNzjxqN9c+ryy5klbpQN5NYQaFtDSPCo6bKLACz0U6
	LUK4dsKWBXoWGV5gHKUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHGu-0001uK-1t; Tue, 01 Oct 2019 12:28:52 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHGm-0001tU-Fa
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XNJhDhnm+k1BnwnI1CC9SFDSWX+IJemCfMgg5iRpkPM=; b=MyI0M5J6Gl87yb7+MYC6igRM5W
 svqKuK/FPdwG8Szw+sxcaIkGM1zF210G540yp/qUE9FqYqreDW9JcT6bcfDPuygh7sXWzPHd4/p7t
 pMJWKJUe2Sp0E+9Hxnk22rZdsaYgzR0Wc4HBHgzaNkW5LZ/csG8wkvoqyeG+2lI8qrHg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iFHGd-0000LL-Cn; Tue, 01 Oct 2019 14:28:35 +0200
Date: Tue, 1 Oct 2019 14:28:35 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Walter Schweizer <ws.kernel@gmail.com>
Subject: Re: [PATCH] ARM: dts: kirkwood: synology: Fix rs5c372 RTC entry
Message-ID: <20191001122835.GB869@lunn.ch>
References: <20190928105344.6788-1-ws.kernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928105344.6788-1-ws.kernel@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_052844_520592_4C68EEE4 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
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
Cc: Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 12:53:44PM +0200, Walter Schweizer wrote:
> In the rtc-rs5c372.c driver the compatible entry has been renamed
> from rs5c372 to rs5c372a. Most dts files have been adapted.
> This patch completes the change.
> 
> Signed-off-by: Walter Schweizer <ws.kernel@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
