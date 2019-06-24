Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C487D50450
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uguQqvvUsbvlQeNbbNCeE2HCyS8cMZ+gHkSdH6gV7eo=; b=PefsPY4kXYrDR7npCzbiPzXUk
	KEfa+3bhhEEDy0bnyx1Z+TYTLsL7qnwGTF/oMa9HeYYoz9B3IDaVJDwjne/sfT+rtBq9Yr7XD7GcO
	tddoi6XoE5nQYE0UOd/xpI+Uu9Ncb6weEDVgYmz3VKRd1ZtaMVVNoy24BXvv2rJr4bJxvxS0FpX5A
	9PiEoWk/gqVCtrTdABoPHKyBwsJlVo2PWV51Ci6RhY6QPExOZA1n/uKy1u2IlKFbB+r60smwlviIh
	QqzCz2n4QNerAXv2OL9njY2QrLV95Hd7tKtQqBewlaerlP4rt/CLFu0N+L5QZaP5UYpYTnLF64RmA
	9grB/pbXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfK7X-00017P-HH; Mon, 24 Jun 2019 08:14:35 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfK7F-00016c-Dx; Mon, 24 Jun 2019 08:14:19 +0000
Received: from [192.168.178.70] ([109.104.35.135]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYvoW-1i1RTc0Q4G-00UvOE; Mon, 24 Jun 2019 10:13:52 +0200
Subject: Re: [PATCH] staging: bcm2835-camera: Avoid apotential sleep while
 holding a spin_lock
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, eric@anholt.net,
 gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 tuomas.tynkkynen@iki.fi, inf.braun@fau.de, tobias.buettner@fau.de,
 hofrat@osadl.org
References: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <c8e5abba-7441-b201-1618-c92dfdfc7b1c@i2se.com>
Date: Mon, 24 Jun 2019 10:13:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
Content-Language: de-DE
X-Provags-ID: V03:K1:vvqf8FlBVKwdp6cZb6vSQAVE2D3lZnSKipS/eVDH9d3PZ020dMo
 6h2/VXzfCkh/Uy/E/8fUwSV+PQovkrLoOjpeR2r0WXSiFkznkl+e5kwkp5t5uY2iezT6+sG
 D7gejc2XKkjPlW39HneI77Jx0GRdY8YdR4PHlOiCfTyoujJbgK7Y0nokIBuUL9a8xnyltUx
 WJ4knFYuNX4FHuFqyq9Kg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4Obk7D5rplk=:qRjazcfX39WGiDmelrFWDQ
 /n2XvgMMiyNF7JsOrAePp8mx575muX0KrJ5rnbzuSk/By3VrsUCr8or4+6Ekm6O7DTd1xRe0S
 sNIcUq6mmeQGgvryk53G9xnzwF9KHzKUNrGGp3dD26EyOqo4dajKElbZOiyfQLqTgDH2k8uVe
 67vCdqzDcDtRRvcrC02XH1Nbi+gbjAyq0Aa4+BJIH8+0eRWzRezKoN4em3LbTi+nY2HTakjT0
 ZBf5sNWTVb2TTxdAnNwBEJ6l046vZqgKKBKrdIUXavqhinVfagdR0uKTKOaM/UitwTPdZTuxZ
 13JesgH7Fb9iPFbJ1D/PufKAcse1rBl7IBqa+rq5B2B5G3k3WoBuk+hRzQKCtNkeFmS750JND
 tiQA8FQ7gbu67B1JPvj0N/ZTmRLKWv+LVMvoTaZ6v47xuUmo1+TXeqeOw7l5vADp/kmyjdW5r
 ZkUB+ScbhID7cgNb1aPY5DFvPJtTj4C926Adc+JiBv+FsD1Rrb9U3FYVmL2oC7G6Vg+c0bRnY
 6NFjbUJsqaxboVyFrej91uXI+fOWfsa9lf033vpKiMhUT+RsuE0z4zSXdUUYGANLJY3QN9WkM
 LDEhKsLgwJh57VTy7/6/oDinLY4gmRWKLFDgVkvr+jD3yTvxmAqpz8g2uCR4tuKWbUTbtZm81
 hLg6fXTBkMvVGNAtR6OY0A+D22avSDrJclOfR+7+LzxI0UeG8awFfZXZJfC6iyY7L7nQZYSzq
 p8SYYvr135wQliP+6jYDk0qogj3ObTK6W1/2SV+yPFZ54iPNjNJSctjYfgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_011417_756361_2DD0B109 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christophe,

Am 24.06.2019 um 07:33 schrieb Christophe JAILLET:
> Do not allocate memory with GFP_KERNEL when holding a spin_lock, it may
> sleep. Use GFP_NOWAIT instead.
>
> Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

there has been a fix for this, which isn't upstreamed yet. The preferred 
solution is to replace the spin_lock with a mutex. Since i'm currently 
working on this i would take care of this.

Sorry about this.

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
