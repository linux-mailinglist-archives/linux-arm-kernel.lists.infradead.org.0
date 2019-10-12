Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66295D5149
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 19:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t18edhLrORbOKgLbOLBm3O+SKb8MN3d28rMFa3RC+bg=; b=GSRRzBjzJdriWe
	yzSN2kmfoJbH4Xo+xaKcb8PlG5XMwsXVG934scSmszEPYiGUDRIwPA2lD8FfDvlqmV9p9CFlY8Swr
	YdM53jysDHjG62udHfsntcoTKwvFhU6qVrfa/BSFyU3ROM241X6CQbqG7zAnlRBllOG37fNTV7d/1
	ZxkAQa0zcQB8DK+Dy8YseVlCxPvJXdvGD8UpPeFWeYzrB9fl1JVLKEcvp7eRy9LfPvjqC8u2tKIHg
	xudnxEbew0HHUi5FxtFZSGTAjBZTtu3ZW6WTfcGXDJ4tny6mt5kE6sPrRCE3Yx+hDuVIIkhqyO9Ap
	sL7QNiza3iojbMrrEVOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJKut-0007d9-Kk; Sat, 12 Oct 2019 17:10:55 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJKum-0007cM-Jf; Sat, 12 Oct 2019 17:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570899908;
 bh=WThmjchEV2vzAfou34wsoexJ0904q7Zea1RHmt1M0OE=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=DwTTL9LZ/P3ZtHGHGrPnmR3fUQTLV35vGi1ykO4JnzH+4YSoWwCwENM2WQX5FDRdI
 M/K2VsaTpxQkH72xRvvoS+kEUHbG12FEnAmKhxwpe3E5VBNzwPoAtWd+k1YoOO8GEp
 aFmq1tvoRqZCNXwb85mNaV8BI/arkoyKXEWptrqA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MSKuA-1iURhc069Y-00Sbmb; Sat, 12
 Oct 2019 19:05:08 +0200
Subject: Re: [PATCH v1 3/3] ARM: dts: bcm2711: Enable GENET support for the
 RPi4
From: Stefan Wahren <wahrenst@gmx.net>
To: matthias.bgg@kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
 <20191011184822.866-4-matthias.bgg@kernel.org>
 <dfe9062b-1960-f67b-2a9e-864c0680f5d3@gmx.net>
Message-ID: <bc741ef2-64aa-562c-69cc-f787b35c1058@gmx.net>
Date: Sat, 12 Oct 2019 19:05:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <dfe9062b-1960-f67b-2a9e-864c0680f5d3@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:TOY8axM0tJeh2ZJQi9bkb+Z/Lu9KtfC8Aq/2aZuGRApGXwwMKVT
 DsmnYbDjr/1UDJ5oTeuAK8MgubkKE0RJNoIuEyqYT9L3NckFkQsWrgUzysDPWsLmkCSTuer
 wGwsyt62YfRmKgYCA3bSLh6SM3vgSGfKWRX8E8sRaG/+5lAL+eonlZmJ/lVOXUmbTsC330H
 vsbFJeUNXCi0+abkU+CPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2MuRQWHyKLs=:IcfwFc4ZLH+uLpnNutppBy
 iVDysOqZ8lvADJrDHiUQrak2+buixxUIYJp045C7Pc8Uq9gJVtq5ngEZc1shkKGHG8COkQ9Cd
 fCQBrAjRd2uTXcravu0eM6c5ZnIxEYiFFFBQMHvGA5PwwkdH5PAOQzE9qB9XU5sYSg1aHxMZI
 OcPFNIIYoAl4zjfTFs3ap8EhMSdaC9u58LFRTkDmEPOCYO/RFT2ce0SMgav3xI4cHRvID0UeW
 vRxc5ierCN+cHPTiaecN9qRsMiRwhsj9TTvrluGa+lKvnOaZNxSC3puExNlktTtuxy8hf2gzR
 A4QZ1DSXgfk6BrQ9dNWkYP46LiSQz8MT4zvho2hZyuTyqOyuAP4IOKl/8BEcznbxxFmwwTDyE
 SiPoV/Q7VqQqVaPdL4el7hCtjbMegzzCYoOTKuEhhnn207dFSa+Wu9iTP5jOu2l7FmBbiClqC
 PALbFAJ+1EjMKqlF2iflm/HTLXBWhTNmmQIiHtFjbRINBQ7eCu5QE6RE4NJ+6YJmkfxy0XxTq
 tHabEciCXCVWcuyW33U9nu0F/5biV3DNmEoIKIwJGPtVqOQg0Hn6QBBtoPjA/Xi+TlCYEHy5J
 zMScV4SdLyM+RIwzeBH1Aapb3MOmHkASGFWlexXYaWIuvZ8PLO3vtMb8zhLXHH6AB7hqBFdix
 jebEUQYZ/qvHDDBbHSff4gL0Q1r5KquYbjtxRnz/Emut1FpdHlw4WFynb+cXklmbdpTuD7miy
 bhN/gK/IpDOHP6lWikd1iFPE5sqFNQDRLLGNIYvSWciwdqUvo+xAcmFIvGLVlQw/gkk7T+Rba
 7s9Ih5b3QfOuAjCaz3Oqfd9ChesR3g6Pu+i71ygJLtp0oWyqHtqOhQYr2/cj9Z38fkQbbxKAc
 pAM67Yl1ppvecGWIcOPPLj9WhV6G1WrMwlygtexgUF/ViEOX70J9qU6NrBLARBioRQ3xNIp83
 iI2wYYm/E8UFdBOekrdkp2x9LYn/bSkWYZKLrNZBd8MhkoclBdOS8RFhvKx9PHkOinRYmSckc
 7MX/X4jAWmXNrnVp4djip/U2/Y2nEhbtC+pQzQxQ6jOb0gsUrFALjGmmraVFZU4Z+m+S5X9Be
 epNbwCyXAzmSMwux/n3qs+rARBD2Mf5Wa0dT4BJ48VsXJ3VsqGLtJFVZzTx2P+SQ2IZ59/H7w
 QLxwLPUYu+b5O56a/8SvKTHF0oCLVvLyyNyq1V+4Com7jUw5/pJm1K+orGOgMF8q6f60NonjV
 w9Hyqu23kHQeAIHEjlZmQ2Opr2nC1lBV88TnxkLOMcxJowPZNUp+hmxtvrNc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_101048_980123_B2C134C1 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 12.10.19 um 01:09 schrieb Stefan Wahren:
> Am 11.10.19 um 20:48 schrieb matthias.bgg@kernel.org:
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> Enable Gigabit Ethernet support on the Raspberry Pi 4
>> Model B.
> I asked some questions about genet to the RPi guys [1] which are
> relevant to this patch (missing clocks and interrupt, MAC address
> assignment) but i didn't get an answer yet.
>
> During my tests with a similiar patch series i noticed that the driver
> won't probe without a MAC address.
>
> How does it get into DT (via U-Boot)?
Okay, the bootloader uses the ethernet0 alias for the genet DT node. So
this should also be added to the RPi 4 DTS. But i consider the MAC
randomize patch still helpful.
>
> [1] -
> https://github.com/raspberrypi/linux/issues/3101#issuecomment-534665860
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
