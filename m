Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696F073507
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 19:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+a1Cqrnz/l+8h+CvSPh01KWuWr19QIxnOD9Qb6axkU=; b=XIIcHOqWkkm5Lp
	rcUWrmgjsHwAA2bcI/jcgEh5WrSKx/GUJaRYMd51dFqJrQemwP6giSY4xTIZwX26lsfqGy/AbHsj5
	ZCFNP/N5PEz4qqixXwgQvMIl/tQF2G3s4Ou58TEZK6xc0YaJHpmpAXQH/pyj/GCcGCwlu/y/5fVaW
	4ieKt1j0oYWViti29OpZfeDgJuUMGC0U/zDrYcSbZxAFK1QiwtE/FYWODXyWeiO0mfW9LUgXv3lB5
	MsvCzncIQNvpEzvs9ZZ+tomIdaW0qZ7nHOH1F8TEalO4d8Lk8X5yjDOiwsOqYITOwZ6DuF2UJNQg8
	e2PlBVyY2EKMFolUVm5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKtM-00030t-Ff; Wed, 24 Jul 2019 17:17:28 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKsg-0002IL-JW
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 17:16:49 +0000
Received: (wp-smtpd smtp.wp.pl 30481 invoked from network);
 24 Jul 2019 19:16:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1563988604; bh=z41DzGtUFzaWWcpQAVjI+8rAtK/VXbLYrGHn+dMjo3I=;
 h=From:To:Cc:Subject;
 b=YeeC3awkT/FVcvjk+fURFqdyv0r3NGECJaqSruBjt2MEMxHyXyddFZaA64nkaxrka
 0lLpbm0O7VZrCjgigBSnZ19v6fCSXRbOMwIZThg3hxH5pulTydVwW1xI4EtrctTXRp
 wUor382uyQhCqpSoEE8V8sOX195Tb9e+kJQh7ApQ=
Received: from 014.152-60-66-biz-static.surewest.net (HELO
 cakuba.netronome.com) (kubakici@wp.pl@[66.60.152.14])
 (envelope-sender <kubakici@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <navid.emamdoost@gmail.com>; 24 Jul 2019 19:16:43 +0200
Date: Wed, 24 Jul 2019 10:16:36 -0700
From: Jakub Kicinski <kubakici@wp.pl>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] mt7601u: null check the allocation
Message-ID: <20190724101636.4699c30a@cakuba.netronome.com>
In-Reply-To: <20190724141736.29994-1-navid.emamdoost@gmail.com>
References: <87d0i00z4t.fsf@kamboji.qca.qualcomm.com>
 <20190724141736.29994-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
X-WP-MailID: fe13a5d9e194338bda75b16965620f67
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [QTPk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101647_159537_290F41EC 
X-CRM114-Status: UNSURE (   4.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kubakici[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: secalert@redhat.com, linux-wireless@vger.kernel.org, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, emamd001@umn.edu,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 smccaman@umn.edu, Matthias Brugger <matthias.bgg@gmail.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 24 Jul 2019 09:17:36 -0500, Navid Emamdoost wrote:
> devm_kzalloc may fail and return NULL. So the null check is needed.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

Ah, I replied to the wrong one..

Acked-by: Jakub Kicinski <kubakici@wp.pl>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
