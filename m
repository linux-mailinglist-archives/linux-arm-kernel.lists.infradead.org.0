Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D44DF6D4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yBERtpFqhEt5nkU7fWgSjjpa9Zt0EGyOQnEni1rCUZc=; b=LCwJuCqzn7xOqj2mrJwauFHgv
	Qp3ZerGLZMXjD7agwdZ2GG0W+M47MenQ3uWEcS5QYiV4cDJcVk2j/qeBg43vfvLST+d/bhjcOTBh4
	/qVyoOqijgpT+yQ7zVU5SMTDVdYNX9iX8osqOUVBCzuNGTO/7u99cyWA8akTGbvaAQ7eDC9ZsAyBn
	lbtg69QKlnkXb3QkxfLmiMSmRbasjJ24a5TqW+FkhHlRx8jVJfk6LB7zDcboIdWTQUvALIAggsJa5
	WPFNEybqpTTTEV1JotF6RQlWSrR9ItxU6gl9BL/gMbCUodvO9yTzSY9qyHh/sKppsjSPYCh5sGF0A
	NC7km6NFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU0PC-00060O-JH; Mon, 11 Nov 2019 03:30:18 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU0P2-0005O0-Eu; Mon, 11 Nov 2019 03:30:10 +0000
Received: from fsav108.sakura.ne.jp (fsav108.sakura.ne.jp [27.133.134.235])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id xAB3U1uw022710;
 Mon, 11 Nov 2019 12:30:01 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav108.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav108.sakura.ne.jp);
 Mon, 11 Nov 2019 12:30:01 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav108.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id xAB3U0F8022658
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Mon, 11 Nov 2019 12:30:01 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
To: Vasily Khoruzhick <anarsoul@gmail.com>
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
 <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <abc648cc-0b5d-b407-b74b-639833ba196b@katsuster.net>
Date: Mon, 11 Nov 2019 12:30:00 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_193008_825150_C2D53007 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Vasily,

Thank you for reporting.

On 2019/11/11 9:17, Vasily Khoruzhick wrote:
> On Sat, Sep 7, 2019 at 10:48 AM Katsuhiro Suzuki
> <katsuhiro@katsuster.net> wrote:
>>
>> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
>> RK3399 RockPro64.
> 
> Hi Katsuhiro,
> 
> I tested your patch with my rockpro64 on 5.4-rc6 which has your other
> patches to es8316 driver, but apparently it doesn't work.
> 
> 'alsamixer' complains 'cannot load mixer controls: No such device or
> address' and if I try to play audio with mpg123 it pretends that it
> plays something but there's no sound.
> 
> Any idea what can be wrong?
> 

Do you use defconfig? If so I guess we need turn on more configs:

- simple-graph-card driver (CONFIG_SND_AUDIO_GRAPH_CARD)
- ES8316 (SND_SOC_ES8316)


FYI) ASoC related status or logs in my environment as follows:

root@rockpro64:~# uname -a
Linux rockpro64 5.4.0-rc6-next-20191108 #169 SMP PREEMPT Mon Nov 11 12:21:44 JST 2019 aarch64 GNU/Linux

root@rockpro64:~# dmesg | grep -i asoc
[   21.509903] asoc-simple-card hdmi-sound: i2s-hifi <-> ff8a0000.i2s mapping ok
[   21.510550] asoc-simple-card hdmi-sound: ASoC: no DMI vendor name!
[   21.567906] asoc-audio-graph-card sound: ES8316 HiFi <-> ff890000.i2s mapping ok
[   21.568565] asoc-audio-graph-card sound: ASoC: no DMI vendor name!

root@rockpro64:~# cat /proc/asound/pcm
00-00: ff8a0000.i2s-i2s-hifi i2s-hifi-0 : ff8a0000.i2s-i2s-hifi i2s-hifi-0 : playback 1
01-00: ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : ff890000.i2s-ES8316 HiFi ES8316 HiFi-0 : playback 1 : capture 1

root@rockpro64:~# cat /sys/kernel/debug/asoc/components
hdmi-audio-codec.3.auto
ff8a0000.i2s
ff8a0000.i2s
ff890000.i2s
ff890000.i2s
ff880000.i2s
ff880000.i2s
es8316.1-0011
snd-soc-dummy
snd-soc-dummy

root@rockpro64:~# cat /sys/kernel/debug/asoc/dais
i2s-hifi
ff8a0000.i2s
ff890000.i2s
ff880000.i2s
ES8316 HiFi
snd-soc-dummy-dai

Best Regards,
Katsuhiro Suzuki


> Regards,
> Vasily
> 
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> ---
>>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> index 0401d4ec1f45..8b1e6382b140 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> @@ -81,6 +81,12 @@
>>                  reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>>          };
>>
>> +       sound {
>> +               compatible = "audio-graph-card";
>> +               label = "rockchip,rk3399";
>> +               dais = <&i2s1_p0>;
>> +       };
>> +
>>          vcc12v_dcin: vcc12v-dcin {
>>                  compatible = "regulator-fixed";
>>                  regulator-name = "vcc12v_dcin";
>> @@ -470,6 +476,20 @@
>>          i2c-scl-rising-time-ns = <300>;
>>          i2c-scl-falling-time-ns = <15>;
>>          status = "okay";
>> +
>> +       es8316: codec@11 {
>> +               compatible = "everest,es8316";
>> +               reg = <0x11>;
>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +               clock-names = "mclk";
>> +               #sound-dai-cells = <0>;
>> +
>> +               port {
>> +                       es8316_p0_0: endpoint {
>> +                               remote-endpoint = <&i2s1_p0_0>;
>> +                       };
>> +               };
>> +       };
>>   };
>>
>>   &i2c3 {
>> @@ -505,6 +525,14 @@
>>          rockchip,playback-channels = <2>;
>>          rockchip,capture-channels = <2>;
>>          status = "okay";
>> +
>> +       i2s1_p0: port {
>> +               i2s1_p0_0: endpoint {
>> +                       dai-format = "i2s";
>> +                       mclk-fs = <256>;
>> +                       remote-endpoint = <&es8316_p0_0>;
>> +               };
>> +       };
>>   };
>>
>>   &i2s2 {
>> --
>> 2.23.0.rc1
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
