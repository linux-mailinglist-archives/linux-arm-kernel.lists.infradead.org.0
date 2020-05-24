Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3833F1E0396
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 00:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RixZ1LmJJgYwNomy/wl53hHbt+5eg4v5mLNkMkISqoo=; b=jn2IXr3hYNvHWX
	0eNrr09fLxxGEzTT1cmYUn/BlyNHHCf+PafZDJ7rfnchbbeMWuhmKPri7gW/wGo5/Bgny2HLZVO6Z
	A3bWUHuiHVlbhbixAtbC22rnFbXjCDvR8DvGEZ3waR/k2u1r8ZxE+8ukgcGlowQewPbUHY50rZGhO
	0jhlTPi5ZS3uCy9kzh1LzNNnqp3+Q/LKQeDhlitDu8CkKhXMDtoh0FCWlsL+DhSbIvFMD7OyPVb+p
	rSg31B4ZxLPtw9IZPvDzaQam0Ao5QtQGODxHWU2Y1PKzS8oMPqvEg7e1k1DJA8Ml0cppMJiTgJZHF
	Rvf9UDwCyaGfGSWCmjBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcykF-0005ls-Gx; Sun, 24 May 2020 22:05:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcyk4-0005kx-DX; Sun, 24 May 2020 22:05:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id q11so3302806wrp.3;
 Sun, 24 May 2020 15:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3WPDX47yX5mukN7XjjJJumJ7dmH44paobovXuGph9n8=;
 b=tfooXd2FWuhN7uLYVtHSkzhYvhu9/Qb9dcs5exdkDJt+m3eb9yzJMeqkgGlKKFSxtT
 Lucwqgf/yU8qMPMZlVAbwLyDH9WoX4vNN54naSELI9XguWyPlqyQI82n89ogJAwqAMfw
 yloI0N+lJX/clOuxxQvlJcI+p1qfg8NprlrprI/bvXAF5rgDCu5rlvfPOtXen4IDqiht
 nbC8FO+8IU1GhloKJBYuNUK+8cL/BV8KdmDEcTteIsFg/XUQWRgxOgm5s+Q3+4vPqkEu
 LHtX7+YaMjekTVXjPTU5qiaKFc7KRyKLzCewhhRhK8tTv9OFtR8KfDtW/KGP1QizXjL7
 bfHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3WPDX47yX5mukN7XjjJJumJ7dmH44paobovXuGph9n8=;
 b=p/H5VtjLzshlIKfai0wP1xxOLvUzzrIbTPHDFVzxzBFL4mKDdLcAuWvJEZIh+lkVh1
 BrG0Z+qfXW1HiHBWDPBfAnWzPz1o+KzXLZNAhshX9+7StVR2HbqKLzamZIdi1+h9R080
 hlZoqD/wP84h4GUwXG498lHkS6DXAjHB0i0xstydTEuOeD5EIShZZvWHfK6fafqKYBPv
 QlhhBa85IOI8u6Rn67fD0TlZ0mOTOEiioPTHSZNqJCx0uvfhLJbwRNdN5VeMBNpQtk/W
 hc/HaUX+N77evexcYbL227FD4yzrq/dACpQuKTjI8R+scNfl5XfGCRTopHyID2fHixXF
 GuEQ==
X-Gm-Message-State: AOAM530SWFsWts58r5fl1AVxJpwKCax+XgMOIuUjVMsDUrf8sYPuD9tn
 E45GNUVl1GXZwC2yNA+Z0xmidxZu
X-Google-Smtp-Source: ABdhPJxZk7d4WuVelJ2261aiOJBAQDkN+XnHYGmHRqNV/ukEvINZg8skvToF73mtCuFov/EkplYmIw==
X-Received: by 2002:adf:df03:: with SMTP id y3mr4707157wrl.376.1590357909253; 
 Sun, 24 May 2020 15:05:09 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 j190sm16722255wmb.33.2020.05.24.15.05.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 May 2020 15:05:08 -0700 (PDT)
Subject: Re: [PATCH v3 1/8] dt-bindings: net: meson-dwmac: Add the
 amlogic,rx-delay-ns property
To: Pavel Machek <pavel@ucw.cz>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
 <20200512211103.530674-2-martin.blumenstingl@googlemail.com>
 <20200524212843.GF1192@bug>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d3f596d7-fb7f-5da7-4406-b5c0e9e9dc3f@gmail.com>
Date: Sun, 24 May 2020 15:05:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200524212843.GF1192@bug>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_150512_472139_E40F44A5 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, jianxin.pan@amlogic.com, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/24/2020 2:28 PM, Pavel Machek wrote:
> On Tue 2020-05-12 23:10:56, Martin Blumenstingl wrote:
>> The PRG_ETHERNET registers on Meson8b and newer SoCs can add an RX
>> delay. Add a property with the known supported values so it can be
>> configured according to the board layout.
>>
>> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>> ---
>>  .../bindings/net/amlogic,meson-dwmac.yaml           | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
>> index ae91aa9d8616..66074314e57a 100644
>> --- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
>> +++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
>> @@ -67,6 +67,19 @@ allOf:
>>              PHY and MAC are adding a delay).
>>              Any configuration is ignored when the phy-mode is set to "rmii".
>>  
>> +        amlogic,rx-delay-ns:
>> +          enum:
> 
> Is it likely other MACs will need rx-delay property, too? Should we get rid of the amlogic,
> prefix?

Yes, there are several MAC bindings that already define a delay property:

Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml:
     allwinner,rx-delay-ps:
Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml:
     allwinner,rx-delay-ps:
Documentation/devicetree/bindings/net/apm-xgene-enet.txt:- rx-delay:
Delay value for RGMII bridge RX clock.
Documentation/devicetree/bindings/net/apm-xgene-enet.txt:       rx-delay
= <2>;
Documentation/devicetree/bindings/net/cavium-pip.txt:- rx-delay: Delay
value for RGMII receive clock. Optional. Disabled if 0.
Documentation/devicetree/bindings/net/mediatek-dwmac.txt:-
mediatek,rx-delay-ps: RX clock delay macro value. Default is 0.
Documentation/devicetree/bindings/net/mediatek-dwmac.txt:
mediatek,rx-delay-ps = <1530>;

standardizing on rx-delay-ps and tx-delay-ps would make sense since that
is the lowest resolution and the property would be correctly named with
an unit in the name.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
