Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BB01FEB19
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 07:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMqU4Cl+t+sfGfmbejfqwDQDG1vg+HeocfWXDzAxoNs=; b=YTviy7DgrxgUme
	wIxyxEmbhQvARJWEIZ7RdqyqSeiyZ1U/NOTFViasqqq8HBsWsPa539iXaw9PYSk/5zd76Aaql1dTM
	B4lf4BfVIuh8M10Z4wFo69SbgL2lmxK+Z4QGuuClBg9aGiPyU6Lq1VrpsD9gPPK85pMD3n8TWsYnR
	RjE+p5FFh51JEHcyNLtgIhDnhzZVM0wYOI3SERaUu0R7EQ3gWCY4r9Jv+9izSnd98OdfpJsuKKNIV
	w3YJ0ocA8NS252IjT2cH/feEpIwa1P/UTZpYsy2u2k0m9skf3cM3gD2F1O2uXC09TD/ml5rODpz/I
	hdQp+0KFiRNBABBx+3Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnP0-0006po-SX; Thu, 18 Jun 2020 05:47:54 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnOp-0006op-8Z
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 05:47:44 +0000
Received: from [37.162.76.16] (port=34618 helo=[192.168.43.3])
 by hostingweb31.netsons.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <luca@lucaceresoli.net>)
 id 1jlnOg-000Fdz-JC; Thu, 18 Jun 2020 07:47:34 +0200
Subject: Re: [PATCH 4/5] dt-bindings: fpga: xilinx-slave-serial: add optional
 INIT_B GPIO
To: Rob Herring <robh@kernel.org>, Moritz Fischer <mdf@kernel.org>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
 <20200611211144.9421-4-luca@lucaceresoli.net>
 <20200617223955.GA2967317@bogus>
From: Luca Ceresoli <luca@lucaceresoli.net>
Message-ID: <b2c064c0-9a52-890d-b026-9cc1f4cab7d0@lucaceresoli.net>
Date: Thu, 18 Jun 2020 07:47:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200617223955.GA2967317@bogus>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca@lucaceresoli.net
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_224743_465803_A22EE271 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.40.174.40 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Anatolij Gustschin <agust@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, Moritz,

On 18/06/20 00:39, Rob Herring wrote:
> On Thu, Jun 11, 2020 at 11:11:43PM +0200, Luca Ceresoli wrote:
>> The INIT_B is used by the 6 and 7 series to report the programming status,
>> providing more control and information about programming errors.
>>
>> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
>> ---
>>  .../devicetree/bindings/fpga/xilinx-slave-serial.txt       | 7 ++++++-
>>  1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
>> index 9f103f3872e8..a049082e1513 100644
>> --- a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
>> +++ b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
>> @@ -16,6 +16,10 @@ Required properties:
>>  - prog_b-gpios: config pin (referred to as PROGRAM_B in the manual)
>>  - done-gpios: config status pin (referred to as DONE in the manual)
>>  
>> +Optional properties:
>> +- init_b-gpios: initialization status and configuration error pin
>> +                (referred to as INIT_B in the manual)
> 
> Don't use '_' in property names:
> 
> init-b-gpios

OK, will fix.

Moritz, please don't apply this version of patches 4 and 5 if you still
haven't done so.

Now what about the existing prog_b-gpios property? Should we just leave
it as is for backward compatibility, or is there a migration path to fix
it as well?

Thanks.
-- 
Luca

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
