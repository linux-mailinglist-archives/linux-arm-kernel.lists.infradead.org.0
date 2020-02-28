Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1235F173CC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpYEZplDHmEiiBcNyS6/Fmp3jZGMT59qEk2FDPxYbY4=; b=qiAmRT+PdKFRx6
	L1BZcezRm1m7UMuHwpPbJdFlwSI7ZCge6QEDLqKC/0arShLkuDhLBPPgEFkM79zeX/DmK84peTs+5
	AKgxnUsmm29RZ3r2X4dv/lW4Ra1MHZovvuaL6OxNMCVCcenP8TuZ0pU85RlTvF2VLYFHLk/yNEAIr
	8/e+uyMtXtzz03GrFpCQ/6UInc4fa3FenvJH+9Wuka7eZMMcaoZjR+QZnzVL449CTBuGOUSpvyB13
	2GA4drpszrXraBqyj3j7CiME5J8tYtOAt9YbiBKnbOIoBxTmGT6uCur/E3g0FGNxJ78qfwt2GkYHD
	N+l/OKrZwVe8s1QtSGuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iQ2-0007uQ-Az; Fri, 28 Feb 2020 16:23:18 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7iPj-0007tQ-91; Fri, 28 Feb 2020 16:23:01 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MeTD8-1ji99y2Og8-00aVCV; Fri, 28 Feb 2020 17:22:50 +0100
Subject: Re: vc4 on rpi3 A+
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Sergey Suloev <ssuloev@orpaltech.com>, linux-rpi-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
References: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
 <b71f1af17d68ee66a2781a694e8a77dcafedd76b.camel@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <1f7e4f5d-d217-9455-9823-00f76dc661fb@i2se.com>
Date: Fri, 28 Feb 2020 17:22:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b71f1af17d68ee66a2781a694e8a77dcafedd76b.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:fOIc7xPoTGEw3yuFqyT/1YM5F5tP81VygguRyubmvFtnC9dH6xf
 TFweHp5RFsoG5HXttJH5MlA461qfUVSFM9xASlMBAXRkLq+Ppp/EGx818UVClNz6tzcSfoR
 zyz4r8E0kif0iTY0HyBRkv4PxjiCtO3xVLxXo0/7YcfgdwDp79DAag0VowI0qJ0HfG6OGlF
 pt9cq5nMiz8hFhjE+wu1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:geo2tEESk1I=:wL+QVDkLiOsY0qgtdgKHYo
 igPs8gIuqbAdmpnovefi5LFQZXolyA97WLodzmcT2X3COIXhjCcyondy/5lQWfj70qmKBL90y
 66KG8BL1FwzWe5JldstlZRHmq5FUpCaph0HSN6X5JWisHrobYoN8TEsFNrFH6bc26FVLyE/yw
 hYOwUHKHIauMFr3mqOpqPqVnjGi7NxPTKzwv8E4Ly8sS9SlKaoGw0xNzOn7rxJdqdUVY2Cwqr
 EsHsr8kGlnIGc8S+pH6+RvMzKn3YzZgPKUSQnOjf7CIA/agWmC0TxmmIAqT13od124655M26b
 waBkSbuUhf/6l5v3OrsSFEKXkpfw+XiETc/9aJmx5SkNjVjYbEcxjYJc+JSLM27OvNkLmtz8R
 OSUmdoD/cLPnUXe/h5lMEk9+Xtj00I+EMowmyC4YkZuVvYLDU+yD6BBSW5ZX+nAn0fO9rOiVs
 9oS4xS4UdDOVqO+/GLs9RfTYFmqoaOYM4eXhr6jjBDpbBmlzI33kfpRTxDb8jNPXJi9bxMwbI
 TwNOPNnaFwiYigPkJtLny7R/ly80g6Qdf5UWZ4PDWMsFt3YRqneV7e0gKWRXFtAiRJwl7BpVu
 NJTLc0gL8cvsGZhfaOoYlsN8cCLz/I4EO/jIMy6Sf7bF1x9TQ806wbMi61mYVWRAEHYJ1375u
 yQgUtgGRgh3zRI0cZMEZf49jZmlFgpzbkyXtW2e1QNYaMP/OUMM1e1J75OaUqRauESGxgQ6dg
 sNQ3TqW+oJvCL8wU36a9CT9bc8oSP6WOCPjYSB0FVHxpAlT6G0bW3hRFuQXJWxMY7G7JyeMM2
 OdjBruF60NY40L/cBEaUHp/Ob33KF4Efbj0E0wBfkmXAm97u0vlSMZVls85oKMqjxJQhIlL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_082259_611810_AF3D0149 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 28.02.20 um 14:09 schrieb Nicolas Saenz Julienne:
> Hi Sergey,
>
> On Thu, 2020-02-20 at 11:21 +0300, Sergey Suloev wrote:
>> Hello, guys,
>>
>> could anyone clarify the status of vc4 drm support on RPI 3A+ ?
>>
>> I tried to build kernel 5.5 and 5.6-rc2 in 32bit and aarch64 
>> configurations with VC4 turned ON but both unsuccessful - vc4 drm driver 
>> is listed in memory but not working and not producing any typical DRM 
>> log output.
> I managed to get my hands on a rpi3a+ and reproduce the issue. 'dmesg -lerr'
> outputs this:
>
> 	bcm2835-power: Timeout waiting for grafx power OK
>
> This is a known issue, see https://github.com/raspberrypi/linux/issues/3046.
> I attached a device-tree patch in case you want to verify it fixes the issue on
> your board.
>
> @Stefan I guess I'm going to have to revert the pm patch, any comments before I
> do?

last time i try to revert the pm patch causes reliable hang of Raspbian.

I will try to test it again.

Regards
Stefan

>
> Regards,
> Nicolas
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
