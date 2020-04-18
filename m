Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB3E1AEB87
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 11:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sOe6BpC10MOn7NfyON4ECGgMs758iF/fPdFPfw8TIM4=; b=KABHcF869p2ATGs25RbnGDzCJ
	KCgh/TB/pTNMXy1C2ZFp1dX72T3gXIXnbxbLdKq26ALveaN5p/Ma/d5ceex6ocFOEti/He1d6wd5U
	b3ThvgEimNu3O4H0DtBiO1uIgW0duNqI/JIMKATK6KZ1/lFc7n2ik4qOpUrAq1UUhCnH+SPfNf0/9
	EYfrXwRws9vZB8lyanfZ/omx2NSOaKOs+N4Vh7d/zjcHyA0z/M9ZCafXAz9W/nCLjHwAJl2V2ijPS
	tUNUF6CAD89G/gV6C4xTy0Q8lI5G7Q4SvqnB+c0la/Gm4Nai+48CbfyUcDZNL46ZXh863+xr+be/r
	U6LpQ4cdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPkDB-000742-FK; Sat, 18 Apr 2020 09:56:33 +0000
Received: from outgoing15.flk.host-h.net ([197.242.87.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPkD0-00070Q-UT; Sat, 18 Apr 2020 09:56:26 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam4-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1jPkCl-0003zf-DK; Sat, 18 Apr 2020 11:56:09 +0200
Received: from roundcubeweb1.flk1.host-h.net ([138.201.244.33]
 helo=webmail9.konsoleh.co.za)
 by www31.flk1.host-h.net with esmtpa (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1jPkCi-0004Rl-1x; Sat, 18 Apr 2020 11:56:04 +0200
MIME-Version: 1.0
Date: Sat, 18 Apr 2020 11:56:03 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 2/3] ARM: dts: rockchip: add rga node for rk322x
Organization: Rising Edge Consulting (Pty) Ltd.
In-Reply-To: <3593382.iQIKm1rSL1@phil>
References: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz@risingedge.co.za>
 <bf3a2b97-4a24-e9f0-599b-4731cc94a067@gmail.com> <3593382.iQIKm1rSL1@phil>
Message-ID: <b77422198df7c285d824086131371284@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
User-Agent: Roundcube Webmail/1.2.3
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.03)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0c6d8zDasFm/nDPEg7mmhmypSDasLI4SayDByyq9LIhVHYm7b54MofsP
 P7P4HLmGW0TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K9N8RgbelEU3z4k5cN6Fx7gF4
 IxdPpqe03Ke3W55CSgGipX77xU2/OO3DievkIHLPfxKns5/jA/jb0AB/j1tpH5/cd7uPDhKhWGZM
 n/d4/07rfhJgg4j+T1FAIbCdkgBZfCzdNGNoLjYW00m5NbCHvBeT5wQmTgARe2GQxmQnRbjM24OD
 2qGt6TVUNM5e7f/l0+1oQ9dbW2b4wUcsVhgjow+WYwXa7GcGa/wA/cDlM+P6m886XHyIQD/p5Il5
 tdzxoYPWT1EPgWcSbCHk8ujeSnbOj+JOCV+/R+gbydGJHww7+VDP+4gu9MM0P8MwqJbtWZ+mBFw9
 wbDfCbgPXUhoanzj5ZBolYt3lOJtwiLNmx2pKRVnMrHZos0/M6pU0hfymyBYx1qtDaSiXo0xo2LM
 mUL1Z4FithJQbhPXqfOZuDjg+BfHWJbc41rbg4WcJeyvwlzK01+6b05+4Lv/pcVBKbSIAO62+V2p
 H7ZPpEG6bBjHHjcTvuwcWprgtdAKuxeqzv2BE9ufKeYEt2P7UPu8FYh90mU5ltygBte98Lr3o1L6
 PRFBPTGx1Ut6/5oByZyEBYORon1HyENyISfTHOtpKTVgw9yWWIEWQ/ZfK1AKScQjMOukFP3P4kFf
 oa8491sqVkDREtHj5EdIfRWQU1iQcN9fxN2oReTDHAyOynaY0CkMg0bLHYOUd2k/FP4GZ8aMLaoD
 dgTYDNJYOqlsNiYINBaq6FA+N87m5dPuP1bu7yrY5Qx4fJOk03R5fJtf/Dv/oTkmxux7nkDlcqo4
 0fvNe6qOBRNkqxqaHyOluuELaV/iA1tw7Cg2iBBUqc+VnwxMgxBYG44cJsHiAJUj2A0ZGRjKipVB
 PsGEs9WdtZIsKKJKTq/OlMObqOptAlx2sHDvpbjylqmC5Mk1B2fFLLRq9AM3V/uXrKlq++rODlln
 NUDihjA708Lg3Y2gXyaf+rIt2G7p5aZhaonSvSgNc8r+HETXd4ACBhnKCgIjlPF0gJGMaV6CJSmg
 U8pftbLkxChMcbUnuWly1fKGgusHp5Yiz+nQvc0qoAtxzv3f8GtQSFsBkqIPpf8+LdgXwjxPOBMx
 sdiFdDCFcQsgFkL4G7F2Av2/exi5Ms9gyaqIruy7eYaKVAcye5FPIQnr8/7he/iizki9qqiuW3Bk
 5C+gdmOiVTCThXc0JQjVu0w41Mrtp0JBN8rqB+cgngTSjDAt8hSY
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_025623_335998_D2B971DE 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [197.242.87.49 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan, Heiko,

On 2020-04-18 11:49, Heiko Stuebner wrote:

> Am Samstag, 18. April 2020, 11:15:27 CEST schrieb Johan Jonker:
> 
>> Hi Justin, Heiko,
>> 
>> In the discussion about "rockchip,px30-rga" it was mentioned that:
>> "no status for soc internal components without any board-specifics".
>> The binding is in mainline, but the dts node is missing I think.
>> Should this also be changed?
> 
> yep, drop the status disabled from the dtsi and that then results
> in not needing the board-level enablement
> 
> (background: rga is a simple mem2mem device without any
> board-specific hooks)

Shall I submit version 5 of this patch series?

> Johan
> 
> +&rga {
> +    status = "okay";
> +};
> +
> 
> Add a node to define the presence of RGA, a 2D raster
> graphic acceleration unit.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
> arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
> 1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
> b/arch/arm/boot/dts/rk322x.dtsi
> index 340ed6ccb..29d50bebc 100644
> --- a/arch/arm/boot/dts/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rk322x.dtsi
> @@ -621,6 +621,17 @@
> status = "disabled";
> };
> 
> +    rga: rga@20060000 {
> +        compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
> +        reg = <0x20060000 0x1000>;
> +        interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
> +        clock-names = "aclk", "hclk", "sclk";
> +        resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru 
> SRST_RGA_H>;
> +        reset-names = "core", "axi", "ahb";
> +        status = "disabled";
> remove?
> 
> +    };
> +
> iep_mmu: iommu@20070800 {
> compatible = "rockchip,iommu";
> reg = <0x20070800 0x100>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
