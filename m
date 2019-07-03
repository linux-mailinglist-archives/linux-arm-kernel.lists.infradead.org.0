Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070DB5E9D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BjIXlFweQfC5eQRy8eVfEDgCfbV4U9FKl+sk5b4IYMQ=; b=SKIb5x3FBQh7f9
	vPdNPlojsjWulosMygi27CaDnnFG5BfgeQS1+BcgsfXnbiydkYKAxNfhdwdf8MFIenS03yMy66BQh
	DecBDvVbhpdAfn9lUiBircnwQ/leuACHoB180kHQ24QkH/U3JEUCBp5lHb5KDxNWRrHkLeDC8sscK
	z8403rNztjKQuyDAhd+RHt3IwIng1zedRBZZHKYbi4oi6IsW1b2JxGl+NN0Bq80LoSm3axWHG2lmC
	2laoTqwDGvShaJPz0fQESki9bX4O0h2vngsTvufP7n63qOuqV0SuoZIXCCtAdUgKkqNnCGqS4SBqz
	/yH2ovQo9rdZwfoWj8MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiibA-0006j3-8n; Wed, 03 Jul 2019 16:59:12 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiaw-0006iP-Rz
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 16:59:00 +0000
Received: from [192.168.1.110] ([95.114.150.241]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MysFQ-1iVRGe2y3u-00vyQ7 for <linux-arm-kernel@lists.infradead.org>; Wed, 03
 Jul 2019 18:58:54 +0200
To: linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Subject: Trying to make sa1100 serial driver test-compile'able
Organization: metux IT consult
Message-ID: <bafd71d3-da72-32b4-9374-9cf7711e3b33@metux.net>
Date: Wed, 3 Jul 2019 18:58:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:Mf0kCgn4cIi6so2Qs8v5CBAWZgBctOiVRIsMewpECLH00n07WCx
 tEbqGlWijWVrp/TFufH+SasuwXTrFw6pY+M9upwSArwRV04kSXHWHIdHJxtaVx7lMZhJrWf
 5e6pkUwkZHGuqMFYAEzblByT3hQHEbrVCudvdeVDH1JeGyQGVEKHjkXpgghvA3Sj4Ms8Q32
 Xj6vqVRmqRvFFi0SMTFnQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ixeM3eJIOj0=:/gRJsRcfQJ7Mgfd6XVqMzl
 Mu1rehG7swaqiUT3DDhs/rbYFv7KRMQnjO8OCO5ChMExCxUHRLrbZrB4twOS4KEokMFDIOgZE
 mKBOwHnXDoZwu3m9zPUdhek/0C1ii0/Xs4MEfauGtRpVeu4me+2t1G2lS4nkeDF3fHNwdSfeC
 DA7kDnqFvnqfyl3wqzjio5DZztKw/4Pd/xbfTca5OJSaAqCnpJ6GrWivLBRVslwTcTuFRyQu+
 Kku28Vhq/OeRA/ReZSZvZJg4kvZSyzh5EVrspcT+So/c8B9hE3WI+IBJJHO3B1Xp+EajDpQ+G
 jFr2V4yQNek2/oIW9obHFpj1Rd+PgDsiD5CFVFaGb68rDiQBEO+9WuT7nZhIeK1keP34j/UPD
 A0jTTitiiNo5p1BMeYujz1K1If39YeJRiPXD00bO3n1D7f67C19Z3/YDGHBZri1WHOtq4MQ0Z
 Yx6YVuC7bOLHtlX3tiAHkOn7bMhwI/t0GWY+cWmDlDKTkYL/IJUztqGIhDSH+DcocbMRuxfvA
 Sj9vVsNtW/0CGHLACcwJZmDDHxQowZlxocH3aikAsVerww0PP0A6wIbgtQ35dlcAO9bhabDsw
 euOov84NtduzvrpUm7SDuEcyK5X/38MysHqP16rj1EIxwvQZPRrGk1Brz8Wq0qN/3E8/AYT40
 tQfVCcDpDoRnuIdcjaqaNswuMPZJq8WE7rxPeJgRGyI8CiQM0THkWIc01aLtWKFfrVMoll4VD
 /M0jVKhU0JPa2oDuBbM7LTLqxgV6/OEhbx9ZjSW/2L5yewJHjZOR4xsvy/I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_095859_200289_BD9C35B0 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Hi folks,


I'd like to make the sa1100 serial driver test-compile'able. This needs
the UTCR* define's from arch/arm/mach-sa1100/include/mach/SA-1100.h.

Can we move them somewhere else, where it could be included from both
mach/hardware.h and the serial driver ? What would be a good place ?

BTW: that also affects the another driver: mfd/ipaq-micro.c:
Maybe we could also clean up the redundant defines in
arch/arm/include/debug/sa1100.S.


thx
--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
