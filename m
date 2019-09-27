Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BA8C09C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 18:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+p3IaK5bQuM0/+8m6ler/bqQBnjSU+pb24CozwyWmc=; b=ltZLRW6AtBT7zX
	FG98JRbGb1yi6SjelezcTAjtvFIF6XBV0Jnx/CVnzPUKF4mpD7bKLGB80hLijFk6wjsEER6sRnNCN
	QCQssVDt9Qb+K0cZEtiRyxlXiZraRmwqMJcXewifnj8IFV0sBgoGThHFZPFuLdGepTpq4okQ+TR05
	eoLwxnJJYG0JwX7YfCM945PA/zNFsaZTajibkfOgs2OOoYjcXbzSdEnd+3X4dmUimQ8PbLdSrudfr
	In17m7CLU9fKsxMeIF+yRBPVckZ+j092xMFIDQZgWItD2wSZkdJ6uq4oU6N5Vo+uDQC5SHy+O14nk
	21S8H3sZvYCis+69OMUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtMr-0004dQ-Sc; Fri, 27 Sep 2019 16:45:17 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDtMV-0004bY-HF; Fri, 27 Sep 2019 16:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569602654;
 bh=DnxB2XCmGvJObcSaLlopxB4cyyh+MAVL8+GfZb+jQNw=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=SUVgohEG8JLFdtNXYaIPDgzKzJlLO7xSeWO4tdda4nErIJVkfzVuXo9Bn8jT3THlU
 QGH60qfzmCPgSQzcnJJVnAJbODakR2q8tmC8jwWxZAQN67uYU2Vi8eMwAX0FEvbSV4
 aG1xekL/psx7EJFPyCM747e/BZngadqDGpJX/hmI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.130]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mt75H-1huZDI3TtR-00tQDk; Fri, 27
 Sep 2019 18:44:13 +0200
Subject: Re: [PATCH v5 0/4] Raspberry Pi 4 DMA addressing support
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Matthias Brugger <mbrugger@suse.com>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
 <3f9af46e-2e1a-771f-57f2-86a53caaf94a@suse.com>
 <09f82f88-a13a-b441-b723-7bb061a2f1e3@gmail.com>
 <2c3e1ef3-0dba-9f79-52e2-314b6b500e14@gmx.net>
 <4a6f965b-c988-5839-169f-9f24a0e7a567@suse.com>
 <48a6b72d-d554-b563-5ed6-9a79db5fb4ab@gmx.net>
 <2fcc5ad6-fa90-6565-e75c-d20b46965733@suse.com>
 <3163f80b-72e5-5da8-0909-a8950d3669f7@gmx.net>
 <a5073e16-c017-216c-72b4-0e861102c4e8@gmail.com>
 <c7e6ab89-aaae-debc-5f63-2e091efcf76f@gmx.net>
 <197ebc29-2e4d-fa2c-7ad4-1a83ce3f3eb4@gmail.com>
 <5870dc40-331b-d4f1-3eef-e7c08d5326c5@i2se.com>
Message-ID: <714dd32c-1478-ccbb-217b-c6928b94f685@gmx.net>
Date: Fri, 27 Sep 2019 18:44:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5870dc40-331b-d4f1-3eef-e7c08d5326c5@i2se.com>
Content-Language: en-US
X-Provags-ID: V03:K1:RmdvOSnEvTVNKHrJdG2Y78+fqqnATlPjmRNHT4KrdANZJeyEa+x
 Awv0OQ+sBgJ8RVjUtemu2zZl/E+lBYF4B8GhETWGCLdt+D7Rzjd+URyTECKkbd7dcOFQFo4
 /cGL4ZC75knf8TeOK9qpRvXc8FxykUKnZAMzgonV6surMlgXaKI/EkViTvQLp8YnfMhy9FL
 M9mqSFpLdMHWszWrk8BTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W2R8wyBsDYM=:3zmsBCn9kFPX6ny7AHdHYy
 aXhLcyrnpSCXmXDIFCKxsdX2RcqQ/refDjvzMYyGQBwzWbCioILlPHu6MKFYwUi/QxOpyisOp
 bv2d5YAyWvDE0zU99oXTwJUSMFCGVWIJqVDNdTq2jMQ0whSeVy2yA06QkTBv1wGcd2CtMC+i3
 VSvuMvIWRPJvW1ZN7nb6oo6Fg3lU6OuBVKgeQj8wUz8iNcA8j9klftBGjc+4sSdrSDcjIQ/y2
 teWfwY9T68bq4W+Cn2GX9TaAfo7HPrp/LAK3v0RQjdnQFddbLM0sqbTmd9Ndztpg3CZijn/74
 NAJtt6V/n+UfydjvZye8r/132UhHmrFl/Xc/+pzVRNIVHCzOdCQ0awzzqT1ehIQmhBzPzPSZX
 dVP0L91be/2PeTMbHv1505Y22T8VF1g/bMLIWoxbQmbpAxrARyhzurYQz7SXq9gbxsSC7W7lm
 0cmQV5M6dY8a4KkPLx64bkhgDuqolgpVxqV4kHGKb0MOP2gyoTbDHkegbSPkYkF1JEeW/cQzu
 eOJ5ahyinfcGYM0H3y02xRLONIEmO0YZgB18H8RZO4GF5vDl97TeDDsYuES8hD2bfNM6cqknF
 jVL1lt2lMk6I1QgwnK7+SyHXM9pdLe7+HmOQU08JP+FjiaEHf9Vwb1RIie2bCHnkdfhBIuX8R
 +ondMH2iTivtUVdEimSBbKtnUST9Sh09i5Xgktli4/jhwcorthmU+MtONLJpyWSLAzhMH3R/+
 ZVyFBJg9LtbdCTYVy59htxsydpxgbLhLkVDtApkFxY7c/gHOmymN3VW/C87Gixu8OZE023RE3
 S5R23BNL4cgvUz2rSq4hhGpyk1tO9dVyl2e2OuV1Zyo0gbLgCNE3HyMfOOmllOELfzz04i9U1
 bmwiprFdDFwjsMkIc+9iYgBOSlhyTMFgqfKHNAZA24ST7T2RDcsxAAR4mk/3JvW7RrhTxdqln
 2I5m5lQoRWfteMrQQUAe9QPa1dBQ4l+cXKMiWIbPLoozs81/Ut/GtvzQzg8il0izM6ibz4WEO
 uvkE9LLtDfp3k0eN+In4DjRnl18KxxsUf9g0cahvQI1PEmDqHYqQFyahRyFrZJgncFotV9Zl8
 vo2HqrndOlHR85296DIt+opLm/0+URC3UfOjgx/nsqJbr+PgPyfcHxsipBwPkQ3Qp2iVUsyl8
 q8LoutolkOLWh841jz+TIYA5S7y9yBpNt9ulYlXUlQ9NfJ6haLE2UsJ4y+y9kJAJJenIyXAVO
 7EbytgDnKN54eHJ77/fWkAR+3zNt15pviwEvc1Qr/PaYIwuHWbEJ8Ogv/hn8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_094455_905379_564843E3 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
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
Cc: f.fainelli@gmail.com, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

Am 17.09.19 um 20:03 schrieb Stefan Wahren:
> Hi Matthias,
>
> Am 17.09.19 um 11:04 schrieb Matthias Brugger:
>> On 16/09/2019 21:19, Stefan Wahren wrote:
>>> Hi Matthias,
>>>
>>> [drop uninvolved receiver]
>>>
>>> Am 13.09.19 um 12:39 schrieb Matthias Brugger:
>>>
>>> So my suggestion is to add bcm2711 compatibles in the downstream tree.
>>>
>> Ok, can you take care of it, or shall I send a pull request/open a bug?
> I'll send a send a pull request and hope the RPi guys are happy with it.

the pull request is prepared [1], but didn't had the time to test
against U-Boot.

Stefan

[1] - https://github.com/raspberrypi/linux/pull/3244

>
> Btw the clk changes has been applied.
>
> Stefan
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
