Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CDCA81F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=klZMJwRlYGrut9X0wbvyshubBA/kLWC19pyncccP2R8=; b=JGADCfs6eIMCeWmEHP4csk64a
	GCMpFTp19I0RTNaGakl/K3WpRjvfiHpxttPT6lffvUSEeL/jY/HhroLgLapjcR0VyR1j5+MF0soQu
	4TtxxDAJES8kBNbNMmbFDD7bB8whRg9gdPs7gOb9WAgSA/2y24jlg5bVOsuo5et/ZtJvlxTmXU/w+
	ociovLqzynQ4miarDk6PoPQT7wM/MejEhsJ+br/RDVoR4F/P5gbs3m9PVSX194XaV1DuGECOVocEs
	ZMqjzggx5VimSvpTcc+bjmryhchqbANH7OUQCj55qwOqNk4Dg4ejyq8SSwiaD4M5nURXAx3F2+1DO
	VUPLAwTMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UAk-0000zP-No; Wed, 04 Sep 2019 12:14:02 +0000
Received: from hel-mailgw-01.vaisala.com ([193.143.230.17])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UAV-0000ws-SK
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 12:13:49 +0000
IronPort-SDR: 6+x0P9Yua4fnHlfr5WkBNB9cMG+J4CX1oHfqPsn0/QBhbL3Avv+9RBckQeILhKu3Xr9Fx9ZjNK
 Y1+0ctfwYdZbY/NqrPr19+j3KoefhQIj8s+2EEN90BNJtci+X23I1i+HMlbPt6G4p3K1PbFPoY
 gAWVemSH6yhaOj2KdY989mYt/zd8UYscU1m501dznhGws1ma2m+9WJwP0pUfcyhtUKy7gQt5QQ
 725vCyCJJiUJDPpatKodGPoHYI88Fx9K+jY8E+UpnKJtw6ZyOryenf6H07nNuF9kJjU9rYBlfC
 070=
X-IronPort-AV: E=Sophos;i="5.64,465,1559509200"; d="scan'208";a="230947036"
Subject: Re: [PATCH] power: reset: make reboot-mode user selectable
To: Sebastian Reichel <sre@kernel.org>, Arnd Bergmann <arnd@arndb.de>
References: <20190805075812.1056069-1-arnd@arndb.de>
 <20190902203857.zusvlv3yv5arel6y@earth.universe>
 <CAK8P3a3uNPepYweCN9+_cQNQyiSGdidwNGL0+xhti2vm8g9O_g@mail.gmail.com>
 <20190903000454.lul7fn5nxqcvi5x5@earth.universe>
From: Nandor Han <nandor.han@vaisala.com>
Message-ID: <a85385da-c631-4a9b-4b05-888daa640129@vaisala.com>
Date: Wed, 4 Sep 2019 15:13:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190903000454.lul7fn5nxqcvi5x5@earth.universe>
Content-Language: en-US
X-OriginalArrivalTime: 04 Sep 2019 12:13:43.0517 (UTC)
 FILETIME=[31EC58D0:01D5631A]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_051348_264662_5E188949 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [193.143.230.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux PM list <linux-pm@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/3/19 3:04 AM, Sebastian Reichel wrote:
> Hi,
> 
> On Mon, Sep 02, 2019 at 11:16:27PM +0200, Arnd Bergmann wrote:
>> On Mon, Sep 2, 2019 at 10:39 PM Sebastian Reichel <sre@kernel.org> wrote:
>>> This patch does not look good to me. Better patch would be to
>>> allow compiling CONFIG_REBOOT_MODE without CONFIG_OF. Obviously
>>> the configuration would not be useful for anything except compile
>>> testing, but that is also true for this patch.
>>
>> Ok, I'd suggest we leave it with the bugfix you already applied then.
>> [caa2b55784, power: reset: nvmem-reboot-mode: add CONFIG_OF dependency]
> 
> That's also fine with me.
> 
> -- Sebastian
> 

Sounds good to me.

--- Nandor

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
