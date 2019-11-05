Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33D1F08FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 23:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1lcQ5SDdSJe0AWM6eOKBON+cI514OifkZ6llm50Xpw=; b=jSasDeGJC8DiOP
	vSaSvaOH8/gap6ueDAffjTypuQMaAtlqPp+TAnKVObwMjyuwodfrLY2FYb+ZRp5VwMyVqCazZbpI6
	lznsPZ9WBFeWBGhx2c0QIDgvqmJVQB2CM0mDMFtE295UBBmJVhaikWpfwIRUaAiu65ybp3m7tLiy8
	BBQ7K23so/FBVRjHS3fSWgH/mjLBjNrNx+zmLo7INYwWrxMBD+YQtAngXaunhovHdJMsItjYjfvg6
	v8oY30ozn9rwJs+Y/u4FAcMQ89QQR/LHN1coOYtsWzFYc7u1NXXqntuRrqACZysERWZEKZhEqGwlC
	/ypWBgs/ioI8vhprbgKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6wx-0000ku-Rg; Tue, 05 Nov 2019 22:05:19 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6wq-0000VS-KR; Tue, 05 Nov 2019 22:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572991500;
 bh=2CVqbSurqJVVjA0OYR8gXO8OdEa3ms5r9NaHFZv7Two=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=SvBetFNEn2/uts/8FWFpDfPuxC2yvwcCERvRfkFHv4JkgywrjydFUewcx0OtQgv2Y
 m/o4PrOv/beKOPW4Fa5mBbP8hx3T/OZKT8ETKla/RNrOl4lvzlcmsGk9QzYdUwy0R4
 VhHISApJS+5d8aIw6s1DsI7l281IKGPi4W+bhPkE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.164] ([37.4.249.112]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MBDnI-1iejje0Ies-00CipI; Tue, 05
 Nov 2019 23:05:00 +0100
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: force CMA into first GB of memory
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20191104135412.32118-1-nsaenzjulienne@suse.de>
 <20191104135412.32118-2-nsaenzjulienne@suse.de>
 <588d05b4-e66c-4aa0-436e-12d244a6efd8@gmx.net>
 <20191105145150.GB22987@arrakis.emea.arm.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <7b9dd4a8-bd6a-b543-4e6b-12c663161a90@gmx.net>
Date: Tue, 5 Nov 2019 23:04:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105145150.GB22987@arrakis.emea.arm.com>
Content-Language: en-US
X-Provags-ID: V03:K1:9JNq8g+rvhYmh230bjn2+Yl6kiptEJhMkbSOVyzXw+78zlOvEBb
 NShJh9pEnzi22cql5YAcjZeNmcdOZtFaIQqXTL/TMUI9FNncrr/rfC+5YbKKekKQtrCeQC1
 XAEKA5oEwAFKmkUDDJMuh6u5RebmodbozGhcyShJLBkWSXqF3DjaBXB+lcDw64fwVirE/si
 Vc5Ani6HqFdTzWo6cJQkQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2Mi9pCPaGV8=:VIn2in6bEWFlYe1xcDPNFE
 NQ69+raB8AJ16d0jipH56fBsw2mtewDsCgCPBX7X2Au8PuWhQ8PAVzDrbbQNWEI+6tkwb3gui
 EdqupHfNz6anGuXDlacv6kj84ziUvmDT9FViCKtm9PQ15lg17u4dvZXChCnny6WI93zVxVBVn
 011rnpSpjkbajDlGQaq8cLvtlwZv+NZAb4YsmAd9ZwtJPla+dj7631FtFoS0GJCzcqvUvxOk/
 7FQarQNKfEvjhJZI7nOCIWOZ1iKee2lYzVVOjEuHQWpVxUVN1/MGHFErU9rRA7h82NEvKT3eT
 //2/Tf4W955mJIu07u3Om99t8aA39SCMjWcSXVdcXNMoWhUMzZd3LEncuOsxQemDFxume4Gi2
 caASusANbX18bh3PXrTc1CHeOul4sFNvxpI4bQXi1YKaxy17Qof5qWYKxGtUwHDkSRsJdbyuS
 9I34I+PMDozfEg/r4Xaly0RWyGUorGQa3w3iw2y9H79HAGC/e3oxBtTwzIHXpUzSPpNTfu7Hc
 F+I7qrNWOB9eYYukwIEZ4PTyzHLtr+3OS1bG7Kibk7oe4JNiS/nwpb+xNAlKzfN9H/TsR0QFk
 N6eI4iGha+dt75htaS+Y1KOrFm3Kba+QQHj13sKqH0KQT+ln7stf2sDAqvOuLABxAidIM4r0G
 N18WafaVXkgguGMF7M413+iW96lvdNmIzISeRmt7Hfvjy3IAiHVF9/BFm1GAIpZLr0uC+TG6w
 PM1j3JiQ5U9wCCvLxLFG+wB9qEhkR7azzsypkCbPDXrXm7Fqo06wGgBXYEnaMq3SERpMR/z8u
 2zWOksqzrJqsFiEYvR6sc4PJaHKcorrRIPGBeR+0VdJ9GODJZSaKUfpBYd0aj83m3AiPhTvYK
 X6POccmrhwwnxirPlHjRKkXt7wCcvV2rY/Gs2JT9tC/sCG5I82lW1JeoetUEK9XG08cN+GN1w
 bUvH0i4QmkPHoab7X/tls7YbQGlqSe+wiNi93/+L0R0O6oOAopQsltsU9LrTvTDZ2BOsFk8ME
 8wFVWiAn5I8LLhMl6TvCV8mICEIN29MLnvwPKF3qM8o3uIeMYvxwxQpGXMG3sDj5NZ6vrtlU1
 jILRS65UGv8+cM7qsYAhWE1qJOalb43awpGlQr2q4iPvC216h/eHWQcu6QLejxQXtK0ckBC9M
 ob2ztcsjzVPcGDFyqCNpe9cnRBq0ZpDPQTylRMVAqwm0Z2JZveirzHO/0vww2TAV3HT3RJgFR
 MR6CvhSL3bjIU3z3lTezZr+/akGV4qN9QZqpfnaCnWd35KwDV0dxyngmGva8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_140513_001041_C29CED85 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Eric Anholt <eric@anholt.net>, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 05.11.19 um 15:51 schrieb Catalin Marinas:
> Otherwise this will be queued for Linux 5.6.
> I'm happy to queue them together with your ack for 5.5, otherwise I'll
> only pick the second patch in this series.

I had a comment for this patch which should be addressed in V2. After
that i'm happy to gave my Ack.

Thanks
Stefan

>
> Thanks.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
