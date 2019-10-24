Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9795FE3271
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=epcLto5xGuorings+dilb+gyUlJ4e78gvDnmNAD98kU=; b=T6Q
	NDkb++B293ZAKOuov4K7PrCbFHKv4iDpnK2cGwprCCGk91uTABDfbFY2jc8UDz+RJdNB4o0bEMRS0
	NnU5TJZGGCa2MMM61eQBTg9Z/B7xESLR/RFNMUhUmIKdbkNu8cJoeAkAh/6qkVeGf4kgCwVM3sm2Y
	FKTibcsGxg40IN+B4wjJJp1DAY0E6xEMALGVV8sZgeIjacxOD5AbHz6IHaTbk8rSkp1crkHElQqfN
	18ZD+MCAM/0W++xBPoeps5/zS8vRtHpVZsPXZaFEv44rOf30sU/U7weyd/aM3Ztn6zJQIJQyVP7x3
	zOR3ZYLKC9gWUlNUTnJY3uDHh2bZVvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcKn-0005mP-GB; Thu, 24 Oct 2019 12:35:21 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcKd-0005QQ-2c
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:35:12 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mbiak-1hs7rY0Sju-00dILJ for <linux-arm-kernel@lists.infradead.org>; Thu,
 24 Oct 2019 14:35:06 +0200
Received: by mail-qt1-f172.google.com with SMTP id t20so37556732qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 05:35:05 -0700 (PDT)
X-Gm-Message-State: APjAAAUma15PdkMhua+qN32lybjM3/yORi+XG6pKlUZntTmEtd4PhJlH
 MvxC25UVG3fow0rCSk7EsKg4GU/ORz4es/eTAH0=
X-Google-Smtp-Source: APXvYqx0r69r0F+sUdDpMdl8SuiURjIxIMzuQiKi80l4K7JFx6LXWPYHkqlAw72iRhsvcs0W/30h9UZT9Whz4D++QVc=
X-Received: by 2002:aed:3c67:: with SMTP id u36mr3724553qte.142.1571920504992; 
 Thu, 24 Oct 2019 05:35:04 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 24 Oct 2019 14:34:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2RDBTnKZ-yOJkqY5+2LBeeqvGJ3AMnf+cnqbDVPeUf6g@mail.gmail.com>
Message-ID: <CAK8P3a2RDBTnKZ-yOJkqY5+2LBeeqvGJ3AMnf+cnqbDVPeUf6g@mail.gmail.com>
Subject: arm version of generic VDSO?
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 y2038 Mailman List <y2038@lists.linaro.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-Provags-ID: V03:K1:/LrwnISoCa+jQNry+PLtIPLDcr6edUZdCG13Y5zzmUe21QcnvuR
 t7ApWPgcG3oer2ElcugodUvxAViDZ4eXdf1J/no4sXRnjs6yosOem5EWz5ZlKX3sPx1ZZzt
 KataeFNLUKfmJSICn8T6vbpU0XPgyYuaS1zhkBRktQ7sMqmxTkPOKW9DpiINI9DrFpB2Go9
 IHKDmxznR1OMSsBv80m2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9A3IQVSWCWU=:ZHRqW/bAHBk5nLCR5S8j3l
 bjPo01TESeGrtXNgt5LEsL6yXnepgyE4sgaBoSkdkPkSmKuNrEzWlTLheku6Sfq2YShGTfmYq
 XcFiMOGMBJSdvTEg/4sVkSZ5dPi2MUtQPTsO1jp+s+sPydUGHBpiL6zFCBQjTVHvasNd6auRf
 mAAKbKMo/h2Iana3svzNmX/WqGLnzZXHQkA1pxcdoU/OqhKVQOB09ybZnVfdIO8MeAx07b1Iq
 62lJoAD3rxWF/zWfVN2BIELoK4yLYdiZFN3ebnWnavk4OQAFLo6FysQf+zK0ecLHGvpWnbkge
 EztEEiP28nvhCx6816L6hCeGJtu2WWxZTIoxIN144z5OPh3WpTjS3R7xORBgcjsAqzO1fHFPI
 HCDutjlPxNYUVFY1ylonAvDaq5iU3QOeqWPI17GyiayhC5iBA9I9t1VsPW3pLDrqaEIAbVVcF
 LndslZHaowcnYxcg7lHgQlaDCDU30x4pXkjhtfEKOT8CJ2qRz6sJxRrU7oA1jVHutFv3dI93O
 aryaewc4gQU54GYZ74ryBnKZ+ey7TmaU0kbmFC0+EUFzaYF2FTid7ZYoLGRlpnSvi4P+lIlHD
 bssgPUGdWzpYIJDW+r53KybLiN86bG53FamJ7rDZeBJwLqdCJDNENOXOlYg9JrHqEh9zCVqRY
 HDNFxJIKb5oDpCL+9ZP4nOFx5qiGS3e/iY3FHK4zoFwkM6lttFUz3jFcuUcVcYqp/8ilMpJv7
 C0AS1tS9z9aLt1LDj5xiQEFFBgSMc+7+sY19HgMLW+InuUW4a39fpKGwBz+gAgu6gOipKCMcq
 dcpcpsTubJwPcDLFUkM/huKoy+dv21AswDIJR/nc+Y4TqjBCZl5ty3cZcJ7Rq+FnrzdFpHDc9
 aAG0fhax+0KL7Fjrg6jg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_053511_411556_EAD66A5C 
X-CRM114-Status: UNSURE (   5.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
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

Hi Vinvenzo,

I'm looking through some of the remaining y2038 work, and noticed
that arch/arm64 has the new generic vdso implementation, but arch/arm
does.

Do you patches for using the same code on arch/arm?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
