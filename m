Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6149D1135D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:38:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9NLoKqtsQWIlfnmAz0YFfOIvhxWateZCDIGagPB0Xs=; b=sFHugO7yjPSVuK
	hG9rTogStylV2aKxr2sJwlPm2Vo+F4jDJKaBl+T1p6u35ot9OAxT2/m2FkFU0KKA2JL0KdOQ5WOWB
	r46A5kn8kVrmpzNQe4t2cG9nkXnxe7d+g+FVtmawhbM1ZdOVOuYsLxqqanoy43sdY4QZoWdnhx6mX
	L31UBN4+UUIgmNVs/Ss4n6eKaq0eEfLhFWD4OvTsmhjB7lpz3VDpqzGIz9YELKyUG+2YC+vjHCptw
	8ztLJ192YFkaNrTXiyQGirdB4wSL8+udMg0rpBj6mDDRcN1gmgWYlUtHvia8H1biE0djc6lh6h9yK
	PDiIHDgdr06u3oec1ZXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaTT-0000z1-SW; Wed, 04 Dec 2019 19:38:11 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaTN-0000yQ-29; Wed, 04 Dec 2019 19:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575488268;
 bh=ArwWA5u7biUTPgY2jiZDH4PNvdO34NLG32veiH3O/3M=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=kOHjJJsPsjVDazxUuW67t2XHau3rgAdGxKbQv0dNOfGkPlZ2wNEnWqFysGj8mk4F6
 owuXJ1Ze7t5doZLJvY2z+ka9QUmAu7uR7Be8swvxOA3v8k8toAyiPjoc5N3qt9wXsb
 HwPjk4SxcFLN+uBhNTxzqhgJKoxR5y0cZ0EKNLms=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.163]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MulmF-1hmorX1uGB-00rlPs; Wed, 04
 Dec 2019 20:37:48 +0100
Subject: Re: [PATCH] staging/vc04_services/bcm2835-camera: distinct numeration
 and names for devices
To: Michael Kupfer <michael.kupfer@fau.de>, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20191204114814.26252-1-michael.kupfer@fau.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <174ce1ac-157d-f943-4d3d-54c92ad82fca@gmx.net>
Date: Wed, 4 Dec 2019 20:37:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204114814.26252-1-michael.kupfer@fau.de>
Content-Language: en-US
X-Provags-ID: V03:K1:4//V4radeOhvSxq9QY2Gzoh8RamGWsgRoVkoUC41xfnGbHq/iYC
 dtXbQVuI6N7QpwVztSzXCwCRJBHBkQNjXFUGp/PF7QBIP0Oco29T1cyINYwOQXIKgmwwCEt
 qdXNaSUjX6Ts4h4x2nOIwxsncxlSnicOMKaYwOPX+Bodpn47EoBrcsy2Gt7gprF7/RegiPf
 pSl/d8r19GTIojdBd2aRw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lo/cLEEl0KA=:Kzku3Ktbx05FIwNLxMv8by
 gnFAKmpeJt+IbA4pX3ZeXdwCmJWstYP3+N9QIbpZT7+4Vau/FqMjl62guvm/bGmt04xSH0696
 Z1xukCNco403oPX/SwkoAMJO8MFDeFjzzVDodgJrkrtsILYRXbNAVlJ8j8h/5hyDO0KkYaC5l
 0KDRPIQzTpIEbI166Ga197bor6rtvfEtpT8ak6q04G79MTs0kzDtwQcReiIYKAQZGXsxMJFvr
 +V8ARiKpgZ5VaBL4w973lB+KfcelycYaAZ/1Et8dydbOax5hm2LR/MZi5pdq2u2RZj52s1kMc
 6M+rOdxMtlXHWDRNpM9x/U/j8DTOi6xLyGGDBLAk2M6zZuFmMWHzU3zGBikw+uHGeNNf8OZbu
 BZdDRVmwfuRwkIKPau0GCHZgVEUf6Ar7Gf9llhvXt4NSvng8PNfFhhwOSQf1eLFBtzobSinrF
 nYvFZ1jNBav/1nugd9YL/qUfbo5XHaS2HqLLVRQ45tDz25zWn3YcGRjiSj+mxCIX3fA+uilPt
 634rJafCDBSTmEs+oZx/CIn490iWOScxEYa5GSwqPsQH0hdiCaHgYE0S2WWwCrlfKiJl537Kn
 +SM2Xlj6LQozUXur5wqs+Xxt8JWJ17sDRup/VRJd1n7ZmXG+6CfKVyvKHmZS4h0jd1RkFI4LM
 +KPVRB6pH/Ino8Fgwv0e2KZIDY0GwkswqkhxXdB9sJ/QrGIs0GF+cOjgGVLV8lHMnxzn895jY
 9uSVVfsOqfMp18ICO5ohR9kcCwDlTLeffrx9B2ogMsDHM526o2g7poqEOlPnYi3g007eFZnTe
 LECdy4gI2SWqlPwYAersvtudxGXzktSxQcyIha5jlBVfGWYB0ssFI1R4YZQ2+4V02GCYBBVOO
 7jR4iSKZzDzFajmrY9qqbsMAz414TYqbXZGB58Sv9PmvakFzOqCe9cQpN9u6vvjnfLuxiEhiY
 HGYpkJKkjJ9vWRSAZKXHYQiWTMNqzey+6nkthJEmzHSHWrmY/WHUxxGG08iNgMtbeF7oT84++
 x/4x0t8MnwjIxyoqlcbZ3yTxe13IGssfukfrWxDH07Pto3NvnEAmYoE62zNWIjqfwLEbmaMSg
 TT5NVQaOvMAc7cttzGCB0CktGjyspPNuacpnJd8X3dDC7yRJ5wY7Vt90sOsU1jwlXE6dWrp0/
 v96aqPVJWIGAd0jRRm/ntOlduUP3hOz2/K4+7s71upP0kaR0fOCcl1qM/JwfDMLWYTyiUJIkW
 ooN156ZWOZyvts/g/wL9CCLzK2YOn7pRhqOJCdQgMcJMvlQGwLfwWYyaHDc8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_113805_437260_68868F16 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kay Friedrich <kay.friedrich@fau.de>, linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

Am 04.12.19 um 12:48 schrieb Michael Kupfer:
> Create a static atomic counter for numerating cameras.
> Use the Media Subsystem Kernel Internal API to create distinct
> device-names, so that the camera-number (given by the counter)
> matches the camera-name.
>
> Co-developed-by: Kay Friedrich <kay.friedrich@fau.de>
> Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
> Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>

this is a functional change. Please send this patch to Nicolas Saenz
Julienne the new BCM2835 maintainer and the Video4Linux guys (Mauro and
Hans) and the linux media mailing list.

Regards
Stefan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
