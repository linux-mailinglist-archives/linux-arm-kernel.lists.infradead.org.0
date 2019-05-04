Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D85137F3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 08:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2cDEea/ehRadrC3GGH6rVF8Bo0oGqvdZHIS+a4UF9U=; b=HXHTF42J9/rPb5
	m5O19eF7WfzDSOrPXf+kf3dflFS47BdSt6TyxnOpMQWdy8EfvRlKIgIRujmI8Ev7TPbjtDhF6ardi
	wReADDDR4iMifS0zJR+OazEisPzB0QOlTcf7PY4QrCotq1eubyRnnuUFe8lJRcoxzNvgRDJUILLiK
	9P/X6TrSZCVZayUePGfUgaNEsqfeSh7nSt5zllNYDHSoZ95gNbmneNBL5iksiRFVoLHG6V3Dd/2dM
	jBRw+SPEce8qkuo0CGs2g1o7cdDlHKi0yZl5UWJOS4XY64IzxF76diRYwC2rN6UmtTF3rGCbdeRA0
	SEuDT1CydCKEjbnEajWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMoYr-00089E-6R; Sat, 04 May 2019 06:54:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMoYk-00088N-CG
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 06:54:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id b3so4035505pfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 23:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=gqyA9w6RcMTkaC1wlrGYiIZtj1uy6ZoYFIu5t9JyriA=;
 b=jPezRXAEY669SQbZu/6bAvGUuYDGTH/MEjwYqbzwbVaAG/LALvOho6XqI9/tKuCg5k
 97jvuYYHpxQPkb70kyY6+qdqEtzAjEuQYcTOC42IK2C9x4WepVk4XosPjIO7ltRo8XOM
 b6RZ5LuXsuLItHlqWK29Nk8bzZB+86OgAj+kE04Sk+XqwobHNUYQwdlOTPIRDNuSpEYc
 W9aIzubh2IsmMqbAC+toy0jGJ6XUgDUJnajqX4s6lGljxFDmvGm/PltFnkQJNeHj/d+v
 hTlrMbcn1l49qeJrjY0P2/urLIJ99auo+MI8B0BWmgqUu7Eb3EbvfXpf18tYYMwWDXqT
 kU5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=gqyA9w6RcMTkaC1wlrGYiIZtj1uy6ZoYFIu5t9JyriA=;
 b=rFwYoh8826ko2wSQ5yPjxSGSQsh0TVWNhB3+zVSxBr1wJh2hYdfRbMRBKjDtihtqj+
 h223RI5ZggW3xbWAKx9gAZDWFuYtKnWzmALi4+bN3oSKpT2W7GujaqMT9lOUKflnTTHJ
 Lqtzhuarp/ivfL36k+cYmXzi5PdXMEBwIECg0bFtDAwwtwpskk+OtVZc5T7D7+PZqRD1
 M4Pe0W5oPRIBMBdiwD77tBvLnDEC1jY6sUVulNMeertmhln9jTXmMDVHKiwBC7WxEetx
 Y6XD6gx37vktwgH3OlxWpz1v2Crx2Wgd2bL2T4lrenRpIgdSYVqjZAabf6O2Kfmidgkh
 0sVQ==
X-Gm-Message-State: APjAAAVtzchIr6+nPGcUmhYBEL5HeA93pDSco4xGvSq24qaYwuN3f5ee
 ZBxJrM9/0Cz/sP+Tv8L3/mwV4A==
X-Google-Smtp-Source: APXvYqwE1Fot3eHa0e9hWyuSTftja1FGOlZ271uN0ygTu5BNBapRvhKLGijzB4soIdw2kWbKZ+M+0A==
X-Received: by 2002:a62:3501:: with SMTP id c1mr17569232pfa.184.1556952849325; 
 Fri, 03 May 2019 23:54:09 -0700 (PDT)
Received: from cakuba.netronome.com (ip-184-212-224-194.bympra.spcsdns.net.
 [184.212.224.194])
 by smtp.gmail.com with ESMTPSA id s20sm5434573pgs.39.2019.05.03.23.54.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 03 May 2019 23:54:09 -0700 (PDT)
Date: Sat, 4 May 2019 02:53:53 -0400
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH net-next 0/4] net: mvpp2: cls: Add classification
Message-ID: <20190504025353.74acbb6d@cakuba.netronome.com>
In-Reply-To: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
References: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_235410_415962_BE023C58 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, nadavh@marvell.com,
 Saeed Mahameed <saeedm@mellanox.com>, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, stefanc@marvell.com, mw@semihalf.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Apr 2019 15:14:25 +0200, Maxime Chevallier wrote:
> Compared to the first submissions, the NETIF_F_NTUPLE flag was also
> removed, following Saeed's comment.

You should probably add it back, even though the stack only uses
NETIF_F_NTUPLE for aRFS the ethtool APIs historically depend on the
drivers doing a lot of the validation.

The flag was added by:

15682bc488d4 ("ethtool: Introduce n-tuple filter programming support")

your initial use of the flag was correct.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
