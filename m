Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C53F15140
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8NdgAYdTFn1s2aur5zJKEG32GKGlIQq4jXFi5RP+8c=; b=qEJwSwpg9vssMK
	P85XS1w5W/L3Lpzablm26aFns4qrH70weQFFdx79wH6GRhE0l+mD13BvDbaRKepRks/oN7Uuj33SP
	xJl7Ua7gEn5s9Kus/kk6Uq0SvZHmVRWBlVIN/nxpN2Jz35W5yudP0WloP0eVqujBRnnfqgUZaC8w4
	6njZK4Bx7krm3SQ6YRFy+sHK36kIBJtedaqiZKIjJ+oy5Ew18kjfbimFQDJD6YeEHW1N/Cugw9/V2
	hGW0N3HEzXnJtP1Je5VHHMew3+NTQqsNwLZ/AedK/AQKpbBuiUASVSn3Sc+GgnmHq6awq58TVQKPJ
	QE+kdkqcVAf/EWJUoFuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgUg-0004sK-80; Mon, 06 May 2019 16:29:34 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgUO-0004Z7-1J; Mon, 06 May 2019 16:29:17 +0000
Received: from [192.168.1.166] ([37.4.249.123]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N4yyQ-1ggpCy1Bqe-010quy; Mon, 06 May 2019 18:28:52 +0200
Subject: Re: [PATCH v2 2/3] staging: vchiq: revert "switch to
 wait_for_completion_killable"
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
 <20190506144030.29056-3-nsaenzjulienne@suse.de> <20190506152039.GT2239@kadam>
 <686a4d50696a87b9cbe2a5908737ce91faec5313.camel@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <d1de60bd-c4c6-ebb1-1eac-a5eba41c9a78@i2se.com>
Date: Mon, 6 May 2019 18:28:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <686a4d50696a87b9cbe2a5908737ce91faec5313.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:KPMd0yAIvHU/UF+na4jH2152Sj1Ege8WjWBmfcT+IuEM3YZR1G2
 +sgvLfuoRgxaZr+Hg9dqJ+6FmK9lo2xlfEifB47Tznr0PjqkV9w+I1+xMLnN15/wA5NEYGN
 WlI8/usboIpa/s2P7ZzYzN0WMfbFj1ggpXmk2IcbtgjWURpLcbr9xNyEHrd5MEL9cUMuHgV
 EwtI2P7a2ZRO85e0IJ3Jw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QkAFUe5uD80=:4tFsC4EB6HweFbgqe7hKjw
 zgBhB3Jz/oZF3haWDtVlXqOhE+mz4P7pKm/shMBfMkTDP3fFEGHa+uimMiKvsKcW54j6O63kA
 5FOooUiSvT8Ak08aF1vdVjrOJf1OhStWi4L5h9d1xzyn6fX+cdkPNX9vk0ubI4Ma0Y1154JFX
 5aVIG7Skeu/n+Zwfrwd2rdoL4z+pmsQjtSRH84Mnqj702fh4LMRayROI1noTrro8c6KVV1Mmf
 IejfrbsIoS6jJ5ooNXMKqGyS4gnBEp3UYflPjZdwJdnJ1/SO/AEpbOPb+p8rhhLpnQu//SZTM
 W5FL+2V3l8BCTulzGpg8wa2VTMcoiZZ4oDuqUriv5DGKSnuk1F3LKaSJhaVXtuZWrF/s9OnUn
 Q/EZp1GMs8evvoOwolHZDX7OHvxkCBHWuMVQACgsUAhhcaNd9QluMATwatZkjClGBKVJPqpzX
 y3y8JD0FBb6UF2LU8dHzLnolV1RtsPNfOcAMpD+5oUYtMttg1J+pWGomx6/168YAto0QGdccI
 X/8hs1yBFl2HMcDtoYyciasBH7T7AgFo72MoTF7zQZ5gAMnklNvsYwOGzI/NXl3gy2Evfpv+s
 5DXkUGCYI019ssum7CXy2rW/+6TUQbqAOdCdaq0PbmSdWoH3zNtD8GIxym5hRQnsnFwdzmUkX
 w/Cz4BiS4DNxXJzXEt/1fY5hrCo8Ww6oFc2apUHxfCNQ9Naym0dobdXiGjTO5uHKo79VFoGqA
 dSGJkEroMY8yt5VJwG4RftZYnRpbpxGpLb2dwWbjog3P4ne/LJ14TY5UI/A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_092916_374012_B3A430AE 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 06.05.19 um 17:59 schrieb Nicolas Saenz Julienne:
> Hi Dan, thanks for reviewing.
>
> On Mon, 2019-05-06 at 18:20 +0300, Dan Carpenter wrote:
>> On Mon, May 06, 2019 at 04:40:29PM +0200, Nicolas Saenz Julienne wrote:
>>> @@ -1740,7 +1740,8 @@ parse_rx_slots(struct vchiq_state *state)
>>>  					&service->bulk_rx : &service->bulk_tx;
>>>  
>>>  				DEBUG_TRACE(PARSE_LINE);
>>> -				if (mutex_lock_killable(&service->bulk_mutex)) {
>>> +				if (mutex_lock_killable(
>>> +					&service->bulk_mutex) != 0) {
>> This series does't add != 0 consistently...  Personally, I would prefer
>> we just leave it out.  I use != 0 for two things.  1)  When I'm talking
>> about the number zero.
>>
>> 	if (len == 0) {
>>
>> Or with strcmp():
>>
>> 	if (strcmp(a, b) == 0) { // a equals b
>> 	if (strcmp(a, b) < 0) {  // a less than b.
>>
>> But here zero means no errors, so I would just leave it out...
> I agree, I'll fix it.

i also agree with Dan, but this specific patch should revert the changes
of a772f116702e3f0afdd7e6acadc1b8fb3b20b9ff . So mentioned style issue
should be fixed in a separate patch.

Regards Stefan

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
