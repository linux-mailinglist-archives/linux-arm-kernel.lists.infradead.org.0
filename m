Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8736EB825F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 22:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Message-Id:Subject:Date:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fHrbI/P5cbZB8wKBc5+AA1wlnxkx6E/LnQv2Il31oyg=; b=WpZiOjiX/96A8l
	OX9b9FHhZO4pMlu5HXy5MSUEjXkg1w040LRuSTz8TefOEh25+j8yEZu1wE1fWk12ehwFTJGmhFSgg
	d0rJHGOCxTOm13MxP9ol7jetpymKmwgb5fBfQCZiW30+Wn0aHPP98Hs1ZHgTJXEzM92Hea7jR6zgO
	jwJGd41r3ddsCJAR3MtBCEsZPx2m/4vTNSiO9obkfY9AG/s2do1EaQMtkt2lE9C0Nexja89uWRpEZ
	y0M8llNMEa/N/N6PcQqqZtGr6Xdpv+H7ywW83g5X2kt2zp/1OZe0Qnw4BOu13oD+gM4ZglUxfPoRy
	lxZqDRPzfuZazGJVY8TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2yh-0004uF-65; Thu, 19 Sep 2019 20:24:35 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2yY-0004u7-Bq
 for linux-arm-kernel@bombadil.infradead.org; Thu, 19 Sep 2019 20:24:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=To:Message-Id:Subject:Date:Mime-Version
 :Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PUa5DAqmWXXJbNqt6EsHU9CQpwqfuKoMsQlZL7EJ5Qg=; b=vgUSQSeJzTOES3eWT8+J9yZl+i
 WAtpIl1SBnuYb2Oto2hbO6mckBLLkk43adEXQSvrkRuL+XBRfIMw2LLVVreG7Ki095ageOz/IxVhc
 h1PWg7ayh5fhHdscbXK44pTsg0WbuRmUQ+CkuCpyPnTjEArK3YrkulbJWosiImRpMyp8eiUjAoJl2
 thmGsDPVYjfK1hUqqODNwoUe12ZlVzX/P8c8/GyzJdzs4vB+UXsxfQ94os0oKjBYwFKiG0waX4wXw
 DBsJaXWtXVh3dVFbAiaFbJHyHXt525Ap37C78beUXoLvzPh4CakdY9Dv+Y7plhYd9EBU0R+MYynhd
 V/MnjZfg==;
Received: from postman-ex2.riken.go.jp ([134.160.33.92]
 helo=postman-ex2.riken.jp)
 by merlin.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2yS-0002Az-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 20:24:22 +0000
Received: from postman-ex2.riken.jp (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id E93E7660309
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 05:23:38 +0900 (JST)
Received: from postman.riken.jp (unknown [192.168.60.184])
 by postman-ex2.riken.jp (Postfix) with ESMTP id E477566023D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 05:23:38 +0900 (JST)
Received: from postman.riken.jp (localhost.localdomain [127.0.0.1])
 by postman.riken.jp (Postfix) with SMTP id D739D3BC033
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 05:23:38 +0900 (JST)
Received: from [192.168.1.3] (M014013133129.v4.enabler.ne.jp [14.13.133.129])
 by postman.riken.jp (Postfix) with ESMTPA id BEE753BC001
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 05:23:38 +0900 (JST)
From: Itaru Kitayama <itaru.kitayama@riken.jp>
Mime-Version: 1.0 (1.0)
Date: Fri, 20 Sep 2019 05:23:38 +0900
Subject: SPE capable Arm CPUs in the fields
Message-Id: <864D2B3A-E49A-4F9E-9277-E8B64B36E02B@riken.jp>
To: linux-arm-kernel@lists.infradead.org
X-Mailer: iPhone Mail (16G102)
X-PMX-Version: 6.3.3.2656215, Antispam-Engine: 2.7.2.2107409,
 Antispam-Data: 2019.9.19.201517, AntiVirus-Engine: 5.60.0,
 AntiVirus-Data: 2019.4.5.5600000
X-PMX-Version: 6.3.3.2656215, Antispam-Engine: 2.7.2.2107409,
 Antispam-Data: 2019.4.5.53016, AntiVirus-Engine: 5.60.0,
 AntiVirus-Data: 2019.4.5.5600000
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [134.160.33.92 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will,
Though SPE is just an optional feature of the Armv8.2-A extension, I am wondering whether CPUs are already out in the fields or some vendors are planning to make one of two in the near future.

Itaru.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
