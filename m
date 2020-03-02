Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94660175EE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUlGR3CgFp2BfCIYZhmGdpHSqKpNJVGWmxI3ZadkZLw=; b=QXJq3IeLXtLWXo
	uX8uSroaVI0H5wL5f7gbJINKocW0F7k1au1zUdiVCbIo3WWww70Vvd1txxZSqRZyrIII7Nf+7EK9M
	9Y/+qB36RRByVSqoYkPyRvf8Ti/7GwWQRLPywvtm8vn7Wt/nqq3m6RrH01mBd4dP32wTUIDMposPy
	KHnIT6KXekDvfjh/N748mt2JaEsR8QiXKzweqVfHASViRN0TdsRBlUwZWg8i5HOMzojwco99X79T5
	aq/f11zbFBO8G8KDc+j+ChzzpHlIQO1qmyug44DdCCTtc2x6OorxBoL3QuTNpHyxg1SpVjTXVWAzd
	nkhMAykkNuCkurfTAP/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nS0-0004fo-4J; Mon, 02 Mar 2020 15:57:48 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nRt-0004fJ-JQ; Mon, 02 Mar 2020 15:57:42 +0000
Received: from [10.18.91.152] (10.18.91.152) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Mon, 2 Mar
 2020 23:58:09 +0800
Subject: Re: [PATCH RESEND] dt-bindings: power: Fix dt_binding_check error
To: Kevin Hilman <khilman@baylibre.com>, Stephen Rothwell
 <sfr@canb.auug.org.au>, <linux-amlogic@lists.infradead.org>
References: <1582856099-105484-1-git-send-email-jianxin.pan@amlogic.com>
 <7h5zfpbbn8.fsf@baylibre.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <caea291f-0059-ee84-6d75-ddcb1b393952@amlogic.com>
Date: Mon, 2 Mar 2020 23:58:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <7h5zfpbbn8.fsf@baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.18.91.152]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_075741_635968_560E8120 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Kevin,


On 2020/3/1 0:28, Kevin Hilman wrote:
> Hi Jianxin,
> 
> Jianxin Pan <jianxin.pan@amlogic.com> writes:
> 
>> Missing ';' in the end of secure-monitor example node.
>>
>> Fixes: f50b4108ede1 ("dt-bindings: power: add Amlogic secure power domains bindings")
> 
> Thanks for the fix, but where did this commit ID come from?  I think
> this is the right upstream commit:
> 
> Fixes: 165b5fb294e8 ("dt-bindings: power: add Amlogic secure power domains bindings")
> 
> Also, when you resend, can you cc soc@kernel.org.  The soc maintainers
> are who queue my amlogic tree.  I will ack and they can submit to Linus
> for v5.7 so Stephen doesn't have to carry his local linux-next fix
> anymore.
> 
> Thanks,
The commit id is not correct, it from my local branch.
I corrected it and added soc maintainers to the cc list.
Thanks for your time. 
> 
> Kevin
> 
>> Reported-by: Rob Herring <robh+dt@kernel.org>
>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
>> Acked-by: Rob Herring <robh@kernel.org>
>> ---
>>  Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>> index af32209..bc4e037 100644
>> --- a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>> +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>> @@ -36,5 +36,5 @@ examples:
>>              compatible = "amlogic,meson-a1-pwrc";
>>              #power-domain-cells = <1>;
>>          };
>> -    }
>> +    };
>>  
>> -- 
>> 2.7.4
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
