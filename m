Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C46D4B14E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 07:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYBYXsPy8KD6FPndel58Mh1odj11SubjHRKaOUCtllk=; b=dzaMwtF5tUpnGk
	6oRmJtVJKoorStA++cgM47Vb2smqKE5mHuhtD9VwxeGLja6+D5mOP9K4mr2Yw//ZJC0NwE6tqk8TW
	sxkWuda54BPsul6j/FK4DnGqmPdSX71UPui3s/uqT2Oa2QBgvS4U89kLARBrxl2+dabquDWerZSYI
	J/WeqqJa9L4iqrEGev+gk4I5iIEAARDtc0Fw5EuXMKaYDdI7I6OrgAGpKpwi1Fja6oz61eJFiaJ3N
	36QkqZaS1gOEdTaOmRnBcrYbU4PY8Nk8cCAS5xFYZQiUVIxSsHwcLoQYuHPCipW/+8GpFcojt6sjQ
	JFE0tK7zGs/IwVgrwGdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdT2w-0001MG-Fy; Wed, 19 Jun 2019 05:22:10 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdT2n-0001Lf-Do; Wed, 19 Jun 2019 05:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1560921705;
 bh=0gDj1xAPXeyi4SMyiZbiyIGaB8HQWzPad47nh3Fqm7w=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=el4v1VEs43Bd5oBZ3Kv1QrZGCwiYRV5ReRH+t2554vxd+9W7zXQ1qC+rCxh5CFilj
 Sk15Rx/bLqOh3OPOnTSAUeVkdnxj7cTz8ACCmvF8Of9K4B3QJkVcegRP3fohrO6ZYj
 zwiO3MqHBazy9nl81K8Gv4c1N/FGhwOGx+tb9Mn4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MN5eX-1hvoq53tET-00IyiX; Wed, 19
 Jun 2019 07:21:45 +0200
Subject: Re: [PATCH v2] pwm: bcm2835: improve precision of pwm
To: Sean Young <sean@mess.org>
References: <20190603090058.qd3tbiffmdgqm34d@gofer.mess.org>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <1c7dc4ba-eb6e-b6da-3bfd-4b872f9c6498@gmx.net>
Date: Wed, 19 Jun 2019 07:21:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603090058.qd3tbiffmdgqm34d@gofer.mess.org>
Content-Language: en-US
X-Provags-ID: V03:K1:qoG85SHjpUhZrGGD0GJJbVIGVhvVphYIwEpHoAWl8nkC8Xjf5Lm
 vqItpGm5O/Uq4UHrkXagAJCMByVM5+aaY6sndfYniKUFFBlqN+OLZZ2PUnVwXloBoWS03q6
 FfjDhLnVErAYFGFgC3Oyaa+BTWOH6oDxO0xEJ3N1j6GtYHzo0yTvxolA4wNwlLzJjKApT3X
 0+B6YQrZapNysZC4+bQKQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B7msHSPgdj8=:TVC36hgbWevuxtjsTvLLLX
 fyH0XcJ+WFlYOOmNbyM+f7Td8DLxyvdKaZR9++L1cyWknQ49CsBBrp4sy0CFV8D+EBKOfcKua
 sTFX3fzO2JU9mMY3HCjmtQE812zzBsFTSeb/jQtnFNpVOlvy4pyzZUAZZl4Liui/LAKlNBfjh
 tkox8ygEssntuxxVFH0BPID+U6pvVrLOtc84rw1uNc6+hqfOjTEaj6dUCkDOS98ULNmeKU3eQ
 tV60O+shoFC4L9HRG/BYR1BIOA/ZbHLe7B3lccpK9NaRneumEf5MiBmpfUUNneIEKQN/wQlTu
 ZWfy2UBWJxi7g8IyTcCF9T5RAzpkuIwq1vqhYwy5ige3kxrPcW8kx3EP0u3lxS/xURo5VRPND
 zQPpCIWLnBnnwH3I/67OiiNDfZHSLmRnfNewVnhzsI4p+HhPPXYlRBFhtNeoqDjL5II5jOYI0
 d44h6I34/KIbW5hmoniTIzRGvkbMkAMz+Q792cMWMd3m6GJZLJ8ujsT4YuvbYeKkIvXTvHb7u
 cWBpgdo9sQT56yZICkhysAEU32eL9NjK7SxierMK4FOgqF4jbP+gC96juRkebz0LWMRPdc6bQ
 AUiuI8Wl7keWosyC56Ux6zmKBWF5hEKVLduyf5HC5iRC1iNPH2OQPiON7w2CnW96ZpDe4ggGA
 tEZK3doTlDA0ezq1KwQhSD6O8Ib/9uMNRzNF+nQG4CGoizN+6sTqWQV+3cIhq96zli3jTcaEX
 7Hc0ZevaPnIfJk5NN8GMMuNwU+r+XGWxs87RQlaBIIYhuf0q7zm6byxJJSo9K4QlZiFqwKoZW
 qqw0bbLZBEBR7OLBNPtEYW8VTCY1P+IKfPISupT+QMMKmJRcRX/lCve/44X6EtlA+QmOMkLL5
 Bph229lneIfuE7OhqHz4TS+DZe15COovN+Cl1T5j0ET8NH1+qTiKI1wsRFhZzAiIOZaCcClOw
 zZFF8sExBaoGIVrICFV/3vlHSTNu6RYZdlepJu3kkwbBKm/a1/S7g
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_222201_800595_03A9806C 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andreas Christ <andreas@christ-faesch.ch>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 03.06.19 um 11:00 schrieb Sean Young:
> If sending IR with carrier of 455kHz using the pwm-ir-tx driver, the
> carrier ends up being 476kHz. The clock is set to bcm2835-pwm with a
> rate of 10MHz.
>
> A carrier of 455kHz has a period of 2198ns, but the arithmetic truncates
> this to 2100ns rather than 2200ns. So, use DIV_ROUND_CLOSEST() to reduce
> rounding errors, and we have a much more accurate carrier of 454.5kHz.
>
> Reported-by: Andreas Christ <andreas@christ-faesch.ch>
> Signed-off-by: Sean Young <sean@mess.org>
Acked-by: Stefan Wahren <wahrenst@gmx.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
