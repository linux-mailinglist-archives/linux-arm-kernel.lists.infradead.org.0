Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F53D7D34
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GtwIWiJKLLNfVJH6fjxb5G6cYARGyqFegVR9JQpomX4=; b=L26KepGggIG5PUKK05JOBDDwDm
	9jpVwXnxvLcWGxsFjjjkA4+DyF85i98lXboDKUwbmTuhxcvJt9dm/I9A3BbpJwHTikZjacONvD64r
	E+pAfwGhSQDhv9fapr+Rw3ZWYiAP5VoB+37RA3Q9wDNrY/OdllB/Nrjxf5c9E92WdVdvYS+BaUK74
	+Mkh6K5mq/riPnGRlfrk+zG+UkdH0otc172NYzKCj8rheorE7XWj+lcaieL456SuNJXMlau4T4mAS
	v7ZWUFfOEZSNNGXFzbgO5hoEeAM5YIkiN9TUSOOVgsdQkMyZ9qtPtWkLzouppldahVLJOngAiBMim
	Xzyk9MzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQRL-0005Rh-Pd; Tue, 15 Oct 2019 17:16:55 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQQq-0004xY-7s; Tue, 15 Oct 2019 17:16:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571159777;
 bh=AhHV6TtMeciM0Gr7rafl85fPJjF0rdTKI+ZYNxJSWBg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=DhcKGzunTjcm9phucq+nqCWKy7F3/HAW3E3NyySjTox3ej3RoeEqodSxorFRrjaA/
 EmfzUj0RP103UkvnjMyUbdgsYR7OHRyRbDRaEsoXhu8u8MwJYTov6RYUgVSYQZoS4f
 AWIdA7Dg/LAIdo+vKSxHgcIhDKAfyKfOPA0AKKb8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N6bk4-1hznqQ3RqI-0183KC; Tue, 15 Oct 2019 19:16:16 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 3/3] bcm2835-maintainers-next-2019-10-15
Date: Tue, 15 Oct 2019 19:15:25 +0200
Message-Id: <1571159725-5090-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
References: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:01i+QbX6mSH342HD8rtrSxzRjRTt1foLS4W1KCeunXXHNi7IR9E
 FrYoU6wlK6tfFfxtGVgg0q4hu1rksgNMxoa7yVdkub9JXUQNU3cSc4KD0RxeoLBbNqrbV5u
 kOExPTZUI1fQqo1mh366ctpM5PxbIYKxqD9rv5Z3DZVGjLh9QIWP77m5TcdvVjNzOw8MWdH
 UvJl2I7kmknMCXj0Hs2hA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2LPRL9G1FG4=:QAAqQLCA/mJeESN9JBvJDm
 5cQSqJUKQXRw5XqAgGFmwWfckiYxojVS6c0NgeAkka/I1ik1O29d88EM64gNMGbksoT5eroAn
 QH3NeIn7w3Wd2a40uauFemrSBOi8XTri67lWoInmJP86s8uoNmwTobkTe7qNKtOmHW2ydgkff
 SysBT9IEqrWMSWiwD16fcgCDYpeYwFgiYHBn1rWNByh8vaN/MD62MQ73FOLu9ezFiAyMZ/lh3
 BePKYEVGprapXJTIUDQsR2E+ICADHy0CK5o5OoMjBjAFbHlDbY6JQjCMgAuvDyScUtDnfleUZ
 6y1KBCUxHVYK3fqkz3+VnPHOH7jaP+Zrh2nHWIPTTtZx0pR77pR5mXkG662TZcm2qWupNFQfS
 Vwt6X185mAsyO7SfDUFbNnt5yjqOdr+HVxCsTcAGbvxM1ANbcipx1ecTasDRz4p/2VHzTnTDU
 nzeuOOJCecSh681qKiHZ9o71fkPA3eB8+Yt4dE1bYhbyJ9HDL4gSpQzVhQ/H+zojVggXn+0Km
 8nTw9FQ4wTGCvoZREpRb/Z02fZKI4T+4m1Jukpapd3XKPdfrU3/KuSbrQ+/5UIAKtuVsg5xHQ
 v9NI75r36y7IPQlLpccdJH0bz9PxFpn3P5oTMiQyGeujz5XC4r81nF7Q/+FkENKYtQO7aJP/L
 NB+99ESKVoyINCb6KjscI5Aslaa71FFi/ZYEW8PJq/WIcP2EkYyDbMnZReu5vpHeb01ft/SHv
 FkTZABIe4Etyv+4RGC3SBDyHYi6yZf04E0KfiDEwYT9BTW0f8afV2ULXd2PwLrzQ9yiW6+yJh
 1I9DZF84DPd1yCW7mnozEJZ4J3pF+3bhBEM3Fex69AOM0hQMqFdWJ/P0MRv3z/Uutk+zqFte4
 ctH7jLC6vQCaJHwyaPiUu92MZofpr9vM3Q7K1/bnE5toXV1pSf0Sjbjc+ATZFroZC/meo+zvf
 H2fEfrOdwVvrtybbBZ0oWmiD/KdBfaC1vM03JA5Aa7KzR6Sf49XEAU0yVsLehSbFatzj4aTCf
 BpF/Yo+RBzZW4uhafbuqLxBQzSQLp7kqtyTCmeOH+2JEE95PJ6DoSrsIkKHDIhn13A1pFyevm
 98ZSpV57StIhkuf3cUIzrW/UZZhq5Lhu9Oq9fncgyt7G3ayw5mOi/sRTpKfIKJwjzhoMqKTwn
 29rfbf/RYjAgsI0joKIwfK5PYIAY6Dckmv9xcM55mC4SbcyhzfzTPuyhobTN6HmMgCYRfFh5L
 z2ifUP40fy7k6oA1ueW1P2l7b0FN2/yDzfIdIZg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101624_574374_D7382F78 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the git repository at:

  git://github.com/anholt/linux tags/bcm2835-maintainers-next-2019-10-15

for you to fetch changes up to a91f757bda1a48317f692487addf832ebf8e93aa:

  mailmap: Add Simon Arlott (replacement for expired email address) (2019-10-12 12:48:25 +0200)

----------------------------------------------------------------
This pull request clarifies maintainership of the BCM2711 and adds a replacement
mail address for a former contributor.

----------------------------------------------------------------
Simon Arlott (1):
      mailmap: Add Simon Arlott (replacement for expired email address)

Stefan Wahren (1):
      MAINTAINERS: Add BCM2711 to BCM2835 ARCH

 .mailmap    | 1 +
 MAINTAINERS | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
