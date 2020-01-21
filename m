Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC4C14469B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 22:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Mx8OAa8Rr3Mxhfj8oeXpAeYBn1WuofkXvP79ncwDao=; b=D51ip4psWymlN0JjGmvZDNd+n
	Bbw8IQVOB9RIF5WxdDjBc/7gzwk3jsS9CQc+OE+26dqgoKij52g+rPmBqqfFDiK+AHYHAGMqb7HF8
	H7IRQbyX9TqscpgJ1XywYniHmfBujAlGDB06DUc+OGteYYRmZn1giCpXcjYDVcdcrSbUkbDQERNvz
	0Ss7E1mdy+sFt5pyw2/XNw3zVWtzfGVDkK9uiInQSup8w4VABYUlINff5gOMr4D4G4MQm68VOEz07
	w/2rOxa+vHJPRg1RUV1Wjxly62Z6I2L1aveNN8G3rivy8WHa6c4YvZU7Qw6QN3vxWmiw5/fp1lJ3b
	ybrCJ/bZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1LG-00087W-4n; Tue, 21 Jan 2020 21:45:46 +0000
Received: from outgoing2.flk.host-h.net ([188.40.0.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1L4-000869-98; Tue, 21 Jan 2020 21:45:37 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam3-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1iu1Ku-0001yg-7h; Tue, 21 Jan 2020 23:45:25 +0200
Received: from roundcubeweb1.flk1.host-h.net ([138.201.244.33]
 helo=webmail9.konsoleh.co.za)
 by www31.flk1.host-h.net with esmtpa (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1iu1Kt-0004Vc-Ev; Tue, 21 Jan 2020 23:45:23 +0200
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 23:45:23 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: add rga node for rk322x
Organization: Rising Edge Consulting (Pty) Ltd.
In-Reply-To: <7d85210b-e554-d875-0615-c2e93a264b5b@gmail.com>
References: <20200121201146.18038-2-justin.swartz@risingedge.co.za>
 <7d85210b-e554-d875-0615-c2e93a264b5b@gmail.com>
Message-ID: <d2661596ca26a4b8041a9fac7ee61593@risingedge.co.za>
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
X-SpamExperts-Outgoing-Evidence: Combined (0.07)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0fKZ8wcD78QFAaYhvfMzLIKpSDasLI4SayDByyq9LIhVIjj3L/PxiS7u
 W7QBiFbhO0TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K9N8RgbelEU3z4k5cN6Fx7gF4
 IxdPpqe03Ke3W55CSgGipX77xU2/OO3DievkIHLPfxKns5/jA/jb0AB/j1tpH5/cd7uPDhKhWGZM
 n/d4/07rfhJgg4j+T1FAIbCdkgBZfCzdNGNoLjYW00m5NbCHvBeT5wQmTgARe2GQxmQnRbjM24OD
 2qGt6TVUNM5e7f/l8Qrx+iUTedVmWsVl8JiUwdcWVa3aRmI0WtgQJ6NhkUG1fr3z7O1ewfolpqk2
 9AXTfJkhAT2xwGkQ4rYFSsz8y8l2BJ9SVPTxAsXbMIYTBf07+VDP+4gu9MM0P8MwqJbtxxmkpCtD
 oIUeLHY6xjiNGnzj5ZBolYt3lOJtwiLNmx2pKRVnMrHZos0/M6pU0hfymyBYx1qtDaSiXo0xo2LM
 mUL1Z4FithJQbhPXqfOZuDjnjAAPbecZ+Mi6985HXYGYwlzK01+6b05+4Lv/pcVBKbSIAO62+V2p
 H7ZPpEG6bBjHHjcTvuwcWprgtdAKuxeqzv2BE9ufKeYEt2P7UPu8FYh90mU5ltygBte98Lr3o1L6
 PRFBPTGx1Ut6/5oByZyEBYORon1HyENyISfTHOtpKTVgw9yWWIEWQ/ZfK1AKScQjMOukFP3P4kFf
 oa8491sqVkDREtHj5EdIfRWQU1iQcN9fxN2oReTDHAyOynaY0CkMg0bLHYOUd2k/FP4GZ8aMLaoD
 dgTYDNJYOqlsNiYINBaq6FA+N87m5dPuP1bu7yrY5Qx4fJOk03R5fJtf/Dv/oTkmxux7nkDlcqo4
 0fvNe6qOBRNkqxqaHyOluuELaV8fK+PYMsT3XdL8lKcxk4qNMd+wV+SvLBUi20FCqfORF1Uwgn3x
 dHPlIKTREtTpKWlKTq/OlMObqOptAlx2sHDvpbjylqmC5Mk1B2fFLLRq9AM3V/uXrKlq++rODlln
 NUDihjA708Lg3Y2gXyaf+rIt2G7p5aZhaonSvSgNc8r+HPe3kEEhe4Xl2ceCgkDvM9qMaV6CJSmg
 U8pftbLkxChMcbUnuWly1fKGgusHp5Yiz+nQvc0qoAtxzv3f8GtQSFsBkqIPpf8+LdgXwjxPOBMx
 sdiFdDCFcQsgFkL4G7F2Av2/exi5Ms9gyaqIruy7eYaKVAcye5FPIQnr8/7he/iizki9qqiuW3Bk
 5C+gdmOiVTCThXc0JQjVu0w41Mrtp0JBN8rqB+cgngTSjDAt8hSY
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_134534_320300_E61DDC11 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.84 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

On 2020-01-21 23:34, Johan Jonker wrote:

> Hi Justin,
> 
> rga is now inserted above vpu_mmu.
> Please check the address.
> 
> rga:       rga@20060000 {
> vpu_mmu: iommu@20020800 {
> 
> Should go between vop_mmu and iep_mmu.
> 
> vop_mmu: iommu@20053f00 {
> rga:       rga@20060000 {
> iep_mmu: iommu@20070800 {

Thanks!

>> Add a node to define the presence of RGA, a 2D raster graphic
>> acceleration unit.
>> 
>> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
>> ---
>> arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
>> 1 file changed, 11 insertions(+)
>> 
>> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
>> b/arch/arm/boot/dts/rk322x.dtsi
>> index 340ed6ccb..efa733207 100644
>> --- a/arch/arm/boot/dts/rk322x.dtsi
>> +++ b/arch/arm/boot/dts/rk322x.dtsi
>> @@ -566,6 +566,17 @@
>> status = "disabled";
>> };
>> 
>> +    rga: rga@20060000 {
>> +        compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
>> +        reg = <0x20060000 0x1000>;
>> +        interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
>> +        clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
>> +        clock-names = "aclk", "hclk", "sclk";
>> +        resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru 
>> SRST_RGA_H>;
>> +        reset-names = "core", "axi", "ahb";
>> +        status = "disabled";
>> +    };
>> +
>> vpu_mmu: iommu@20020800 {
>> compatible = "rockchip,iommu";
>> reg = <0x20020800 0x100>;
>> --
>> 2.11.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
