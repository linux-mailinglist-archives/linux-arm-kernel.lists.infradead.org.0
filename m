Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853B546797
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dkZHpGZcQQvtSthpvAI2GySHIwn5edf1iUCCKfYsedM=; b=XyC3kzqUsyYmb5EWBcH1DJwYo
	ssdtP20o6LkuiKIMgdAKr5FOs+jn4RkxGEcNko7MIXkJrehlcNbu5875rgF5iM4vOMWp4EDlp0KS0
	rXd8o1yRyT7/p9umIfJAh2cX5DzGepTB7FYYllqACTvf+Rs940KfAv/kNAhcD8YVcviiVRHg+BwOX
	PcEGFe8LLv3CM2aZfXPzs7bpbRC8eai9MeM8pKlGW61foiV6+9ijXIf83nRpr7tKRIj8cvObwMzqa
	578VDUxzena33ZKr0oyfVL6QMxu9pa7/ta5D2vt5yq6cCAPcHupOwCIvk7XPfJeYhqBJNtRWjPDWp
	mPrgLgm+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbr0S-000855-2L; Fri, 14 Jun 2019 18:32:56 +0000
Received: from outgoing2.flk.host-h.net ([188.40.0.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbr0G-00084L-KL; Fri, 14 Jun 2019 18:32:47 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam3-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hbr09-0000Gh-Tj; Fri, 14 Jun 2019 20:32:38 +0200
Received: from roundcubeweb1.flk1.host-h.net ([138.201.244.33]
 helo=webmail9.konsoleh.co.za)
 by www31.flk1.host-h.net with esmtpa (Exim 4.84_2)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hbr08-0002bc-PJ; Fri, 14 Jun 2019 20:32:36 +0200
MIME-Version: 1.0
Date: Fri, 14 Jun 2019 20:32:35 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
Organization: Rising Edge Consulting (Pty) Ltd.
In-Reply-To: <20190614174526.6F805217D6@mail.kernel.org>
References: <20190614165454.13743-1-heiko@sntech.de>
 <20190614165454.13743-4-heiko@sntech.de>
 <20190614174526.6F805217D6@mail.kernel.org>
Message-ID: <19cea8f7c279ef6efb12d1ec0822767d@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
User-Agent: Roundcube Webmail/1.2.3
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear (ClamAV 0.100.3/25480/Fri Jun 14 10:12:45 2019)
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.03)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0aEcKiGOen0TgGQo14QTNxSpSDasLI4SayDByyq9LIhV4YGQVCHTr0wX
 cP01XXBQRUTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3KFNW5P+sC1d5KWTsAHMRz4hem
 BDpwq0ekkTx9eIg4zRRkb1KnYnbQAcslLHvuRCRWaGyEJJTV3MrNB+6juypzRsZB14E0iQtvqvjt
 p9rD8IfLQwUzwmYYR9K+P2sLHYhi7NC7kipiXczoEqFwrbflV/NeYyvqMkknc5/rb3pedp1/RxVy
 sY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGQf7SNHjJ/utM0RsPmIHE4GA/raTj0LtVBy7MiTm
 x8wLQWyC1bDOw2oEv3DmjqX5Rdlnibl3vcBqVmvQB4A18acPoPuScha9mtPz2mOPDddbmH6eQvWp
 DWTULXV1jJ5bfceEJeNruLKdflVX7oFNsdHVhnpudkCyIg6Nob+f0OfCg2lBMt3xu9nbye2CdJLN
 jSo1M+TSg3TNDI3/M5s9/ot3ko3rrae7IifWc6pL546YUVQwaYLh3di89W/ji5iahyCgJgyv93tC
 61cbiLYl3RCqADG/Ryndzp4OfbK7c6EqHwlqvaI+zok/BsKQK4gft4+8sY8CNaDDoRMm0CGce/eR
 NtlfJySsZ2eS9qGTagUdlCnL4IjEaJi/Te03jgZkriNJs+0XIAXn1Ie+HcHl8lOi8gnN+VQO0b1v
 xxohqsS9Q4vjfJZCa/7ru+hcV3qy2r6xT6/ToAAJ7pkQGcMvuOIaxlHt0+FCc1pvcmHgLAF+EhY3
 a9HVLrEqCQymRpkPmbqFsDBc6VdTgr76BrtpImWjsA4Z+r84QcqrGrinA6acWqpoByflgDsG24P0
 bZjqDBpiAOoh+1qN2rbgvDZlJzPY/RdmiK0Zdwcq7WqJxp4Gp2qnVW06BkjrfxpqPrbH09M+m4Wp
 RRDP6YzwkAPgQJbWosiwuQOYUcnYOSO7mW1OBrz96gclqEeyvm/wFZzBr4ExwImoky3hvPor6xlJ
 91x5em3fSnGjC0MY22e6cVDsZuM7jUXIESohoO51xWmU8epLuQ6AlI64+tPy8xM9qWPEX9Stl4rj
 MDcWV8dcwmItP+eLAc3RVz4KjqXB2lFLCYn9TDvfbJbimDcSbTO4QszeNHk15VolAGHS5rCXQKDy
 G9IFICpfYwbtmVFtzX/1jFBp21i62SsUn3KsaNY+4eSGHfTOXf670dxTbCnoHvieMS+4ayUpOtEh
 dxekWDmK9g==
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_113244_668245_AE418858 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On 2019-06-14 19:45, Stephen Boyd wrote:

>> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
>> b/arch/arm/boot/dts/rk322x.dtsi
>> index da102fff96a2..148f9b5157ea 100644
>> --- a/arch/arm/boot/dts/rk322x.dtsi
>> +++ b/arch/arm/boot/dts/rk322x.dtsi
>> @@ -143,6 +143,11 @@
>> #clock-cells = <0>;
>> };
>> 
>> +       display_subsystem: display-subsystem {
>> +               compatible = "rockchip,display-subsystem";
>> +               ports = <&vop_out>;
>> +       };
>> +
> 
> What is this? It doesn't have a reg property so it looks like a virtual
> device. Why is it in DT?

This is a virtual device.

I assumed it would be acceptable to it find in a device tree due to 
binding documentation, 
"Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt, 
which states:

<quote>
The Rockchip DRM master device is a virtual device needed to list all
vop devices or other display interface nodes that comprise the
graphics subsystem.
</quote>

Without the "display_subsystem" device node, the HDMI PHY and 
rockchipdrmfb frame buffer device are not initialized.

Perhaps I should have included this in my commit message? :)

Regards
Justin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
