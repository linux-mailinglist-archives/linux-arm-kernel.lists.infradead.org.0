Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9789FDB2F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 19:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSh0NhVmR4fIszhkd+psBZNHzRShtlobjbqKP3b9amI=; b=YCugQiywYq7oJw
	7U1seq4W1+bH17IIGez+mYxFiI1TRUoQFMMfo3kyxdnEnpU61t6MlUmRj2njo1fc6YEH4XFBoQ4Xr
	sZmc0rzubwyDHz0DGiYuySMz96347nN0xhZC0E3sdpL7MeIOJNuUTkdkFg3qdCFpfNCsNEckFYw8N
	iV7/4XW85PQ9uQish17qRNQ4ckMxHVQ5zh0jZM9HEtynW8TqklCWt4JKZ3+rYu48lh7BvPxv50LdU
	M05ouD+tEZ1dcu3ZGBYsL7Y5wWa8J+OXmGOu/SIhoGfiZV6zQw+GzFI247FGKuwkQtmkmeTssDDkZ
	tDTSQvz6JoHgM38Vyx6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9Dx-0004fR-7y; Thu, 17 Oct 2019 17:06:05 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9Dl-0004eE-R0; Thu, 17 Oct 2019 17:05:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571331934;
 bh=D2nr+/uIr9daJJyGdGVYoHj2YBBt7jtI817EfrG1QpU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=JHrR07j7MDHWNk3fD/4CMJ7g4axYEyFiJucH1dvF27ls3JFWYxwPn+n0ausS20Nvr
 MYRs6WlmD1/U2g7GCvMmFaS3GXDrwAH7PlxHhYfROInsqhFkWoVpQA4F/Ihws6FM0S
 9eq+7Wd/pwtzM5z0XMVMwb3vVFWt4UxGDmV3GE5g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MEm2D-1iFNWX3BwR-00GJPX; Thu, 17
 Oct 2019 19:05:34 +0200
Subject: Re: lan78xx and phy_state_machine
To: Daniel Wagner <dwagner@suse.de>, Andrew Lunn <andrew@lunn.ch>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191015005327.GJ19861@lunn.ch>
 <20191015171653.ejgfegw3hkef3mbo@beryllium.lan>
 <20191016142501.2c76q7kkfmfcnqns@beryllium.lan>
 <20191016155107.GH17013@lunn.ch>
 <20191017065230.krcrrlmedzi6tj3r@beryllium.lan>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <6f445327-a2bc-fa75-a70a-c117f2205ecd@gmx.net>
Date: Thu, 17 Oct 2019 19:05:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017065230.krcrrlmedzi6tj3r@beryllium.lan>
Content-Language: en-US
X-Provags-ID: V03:K1:9IAKT4IiX7+DDHiuY01ulMUJkFGfba8XIzS9j0mYloTIT6b7IMF
 +LLrgwE1nLdb3KfDiw2CWIEFQ9K4wFRjVmKgbByDB3U2fvKiKILh7dw2VmQxWIGXNvtaogc
 5ZVrmQEohfD38gwvr+SthzKG1UnK8rjGpMe+r0ogdRGKLvzB3GdBvfK69yPx4CS4Pc6S2GS
 Y00K26hwaQvO+a1IyMJYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xzp56fR6mWY=:NhqZMMzbS9aS1wktFFEX+8
 DehkTQE76WkqzqceJsZ9mv81OTmdtvqUxFRkRkzW7dR3HSzToWuvj/S9S3EQhjw4gHXVBheAv
 tAtR00PoRlLrM+6HeUTH+ayxz7FpAiMpKjx6Pb0NPYvOBdy8OeiYv6T5Qz5/bdYF8dpxSfLi7
 5L/mOysYkUIRhs7YVxgAc8tmxevN9TuAJhD8ZfMPiaaA3ALV7awZAvwnKZeo6hbz3NRVwsrVF
 GqUDH5v5ucBredJL+Im9L/AC5XX75O+e+MRLsDDPnbcY73z4HKFbCiZhUPK2xD/i7ca98gcrU
 nt06MwbYhOfk3s+21pFJ+hN80STXVy4ACE76WGvtjnmzTK5Sr0fhAKYAcjuEtrkWYZV/pKFzt
 h6A555GerISg7lkC7094WJyaa9IJXHKnLbv8a6b3vWrty5dS7N52LZ7QgaYzZHDh/yBmt5jVq
 bqpXun756dntcDuOEwnhZ6BuRYhCirOK60xujmJD6Q7yOaZRSrSwD2afiFHwnw3h7Way6gjsO
 zmDxuT98KAjF3EH9V7NkTP4p9Ml/Mz3/cHLp3qWpXD49JRowJWVZLGOuK3+bzkv+CSvAt3m7q
 f/2FbG7GqavZxKHt7Tcd1SfZxLxnBffzzzhUC9MeE0z5gW6Aa6Bh2T9SONKXUpiB3Ne7qZTmV
 icTWZXCstWV37jpw/4SmtEweFW04H9a4NRZsrWVFHDFAdCl0wZiBxmcy1zp8D1eTG5k64Q2l7
 jgd5ioOXXjBeVjtDqHc9SnPj2ZZyTn5fJvbK0ZrN3RujuBHyTn2xo5jG7Rxnu1/tbkzGUnkC8
 eDr5cXWk+kvBErn99eBARy+g0t6PrS1jzgnFxgZ2nU03bcxjNoFqxeAeyRiI5T/jqGp/lgeQW
 1R8Hy6f7kHTxIvsFrMcvQRJyMK2+iG+mXrhEQcFKXqtIZW8TnlYdfqbhB4/qjbomhmZ7mkkfp
 AFhAKRfYP4FN1FyV/flk/6g+Ftal3Fvu6MRvZ6IsKbGb68xA9isVOFWwdblJ0eYcyTzcwb8lV
 8ZziQN6d68WbTFNEbLlkHBSgpMd6zGxeMT6d1+JRpDFcIy2MzuPkcn7uyy6CGWRsOl7oYWoIz
 6eFk6BZpOiSIdiktcwdvhcYkLt5IO+pQKG1FHZABcqUKLyorFL/sxb1kDoSUjMETkSudDJPac
 Q+1dUMMAiEgPOPbvzFJY9oRVp5zuf3BZFjvp7M9j57sDxBjQ4bQ47kGYIlIWbah9DwXgNNHKu
 zCbpbrjW36M9wV4yMmQeEGmvhUzHqbfxB4ulFiw81ICcWWx6wt/ePitqYEf4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_100554_207183_803A03B1 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Woojung Huh <woojung.huh@microchip.com>, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

Am 17.10.19 um 08:52 schrieb Daniel Wagner:
> On Wed, Oct 16, 2019 at 05:51:07PM +0200, Andrew Lunn wrote:
>> Hi Daniel
>>
>> Please could you give this a go. It is totally untested, not even
>> compile tested...
> Sure. The system boots but ther is one splat:
>
this is a known issues since 4.20 [1], [2]. So not related to the crash.

Unfortunately, you didn't wrote which kernel version works for you
(except of this splat). Only 5.3 or 5.4-rc3 too?

[1] - https://marc.info/?l=linux-netdev&m=154604180927252&w=2
[2] - https://patchwork.kernel.org/patch/10888797/


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
