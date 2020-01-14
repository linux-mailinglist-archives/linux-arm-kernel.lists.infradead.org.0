Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A9513A2FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oc8+nlfC3IlLIR8CKnXtkwdr6zqfzVIp+qvzIi8ai0w=; b=C/Y0k/u7UK7vNH
	/Ij1iR/LCCkTj8LSlhuHU2TMsNg14C223Uzu1lWiBgc4CnNHO/PaW7B5At60XspFScjBZkkERU1hL
	K+57PZ6XmEJwOGOrFqcdNgUaYMjkj8Nt/x9htsMp6axV7kVdR97pP3faRyWKzgGeI7FY/DhRoD5QX
	TK0uPFVIP4+XtXQaIy6nq8UQBOY99bBtd+NhLHc2bn1pezjrfuMhE8kJzqW0kZuVMXhwMJMPNOoNv
	LtuGp0nbiKh3KM/+aI7nwRL5y5qYaaiGvBPmeKcRp7pzZhkuIj5UDD8fcjdsaRH1LrQUm+aUsD5Cd
	bvKXyAvL/uVQVjD2QSFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHaI-0003L1-7d; Tue, 14 Jan 2020 08:29:58 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHa7-0003Jv-3C; Tue, 14 Jan 2020 08:29:48 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00E8TfZC013873;
 Tue, 14 Jan 2020 02:29:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578990581;
 bh=EREYuC/AXrNZ/pdGBfsKD3rJsw744+e7sxVQeRfj0Ms=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cYSAbBwXgYczJ1pzAgHb4s44xJhvBOfrWiaPtDtcOWA3pk4vWoH4RusCyBwGtRHWh
 h1cgcTwTWH/6ArvIdiID6Q8fjUqzqC3tz886wYHUXBRJYbzjeURiyZjgmQaZhViJVi
 2ud4Shu7La5vYldKuKPeggufGiEex5pc1opnFiek=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00E8TfjR103963
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Jan 2020 02:29:41 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 14
 Jan 2020 02:29:41 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 14 Jan 2020 02:29:41 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00E8TbcU059355;
 Tue, 14 Jan 2020 02:29:38 -0600
Subject: Re: [RESEND PATCH v5 01/11] dt-bindings: phy-mtk-tphy: add two
 optional properties for u2phy
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
 <kishon@a0393678ub>
References: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
 <20200110111006.GB2220@a0393678ub> <1578990166.21256.35.camel@mhfsdcap03>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <970b7cce-40ed-9ab7-5e04-9e3d609eadf7@ti.com>
Date: Tue, 14 Jan 2020 14:01:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1578990166.21256.35.camel@mhfsdcap03>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_002947_217053_0E07D654 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunfeng,

On 14/01/20 1:52 PM, Chunfeng Yun wrote:
> Hi Kishon,
> 
> On Fri, 2020-01-10 at 16:40 +0530, Kishon Vijay Abraham I wrote:
>> Hi,
>>
>> On Wed, Jan 08, 2020 at 09:51:56AM +0800, Chunfeng Yun wrote:
>>> Add two optional properties, one for tuning J-K voltage by INTR,
>>> another for disconnect threshold, both of them are related with
>>> connect detection
>>>
>>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
>>> Acked-by: Rob Herring <robh@kernel.org>
>>
>> Patch does not apply. I get the following errors
>> error: patch failed: Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt:52
>> error: Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt: patch does not apply
>> error: Did you hand edit your patch?
>>
>> Can you send them again in the right format?
> I download this patch from https://patchwork.kernel.org/patch/11322505/
> and fetch kernel5.5-rc5, then

Please try applying to
git://git.kernel.org/pub/scm/linux/kernel/git/kishon/linux-phy.git next
> 
> git am --reject
> RESEND-v5-01-11-dt-bindings-phy-mtk-tphy-add-two-optional-properties-for-u2phy.patch
> Applying: dt-bindings: phy-mtk-tphy: add two optional properties for
> u2phy
> Checking patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt...
> Applied patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> cleanly.
> 
> don't reproduce the error you encountered, can you tell me the steps you
> apply the patch, thanks

git am chunfeng.yun.patch --reject
Applying: dt-bindings: phy-mtk-tphy: add two optional properties for u2phy
Checking patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt...
error: while searching for:
- mediatek,eye-vrt	: u32, the selection of VRT reference voltage?
- mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage?
- mediatek,bc12	: bool, enable BC12 of u2phy if support it?
?
Example:?
?

error: patch failed:
Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt:52
Applying patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
with 1 reject...
Rejected hunk #1.
Patch failed at 0001 dt-bindings: phy-mtk-tphy: add two optional
properties for u2phy
Use 'git am --show-current-patch' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
