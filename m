Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54926194441
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQACn700qJ5w05oj3HHe466/6qvgaSOie1K9kKBUkhQ=; b=ILzMZXmahJzzky
	yF9bmPBlVES2xg9ndoXvnXiWb+995GVoND5KKujedywGr2NNVFcTTdHinYT9XfcdpzX+AAly4cLAU
	OGEhLXeD20/uwl3sZtsZIpPVlDWQw4+Xgld39cZL1rd1wWhwgjW69TI1esK9Ehg31E0cGN2YTWHLO
	yYeOxvP5upO4YhmqOo0tzLuaMwXHB3Ay6ejUJIEMHJpfNk+aHRKJRAeM8xkn7FhItTC2qwS3wC4I9
	7EI/m5QljfOYSaP0z7cziRpFi6lD4nIt9O44x7iMsxXSuzOBjVEqIpiF+Dbkb1xTBG/vVrduHpigy
	OHa8UZq4Enm5h2caRc0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVLd-0006fj-9g; Thu, 26 Mar 2020 16:27:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVLQ-0006f3-Hc; Thu, 26 Mar 2020 16:27:02 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02QGNFlJ025185; Thu, 26 Mar 2020 17:26:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=1xKLuh0CMGGeFs0L/qRqkwlJw3iv6JDUdN6d2APZlR0=;
 b=0HnG5uLoeEsbI+fFw2vsqkwtWLxAo/KD2pzJPg1na3rYU9vLfKQQ1Ip0pXY9NCwdyku+
 Q31RwCI4B2X/GlZkoDdkduJbdqsHjy/42Qxbg3ogxPDA+U7vf786hhrgLJT8jLLdmNN7
 bDcJDsVxgDzdkqARlQX12b1gkTJRaasnd5dKlK5q29JE135Jl+ZecwDjsT//zNH6KC5y
 wuIxewifITzYpJUobLNUA7f1vl96y3YhGJsEIbyhCeaoTDTL1IkXvpeA6k4uwqZYVzz4
 soC/I8nIaFYynYxe+ziVLCFBbMf5Haf87V1UtPUuWUnsCj04KufyQ4jhbla9EYZr+cRS fA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw9k0ctc2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 26 Mar 2020 17:26:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0F8A210002A;
 Thu, 26 Mar 2020 17:26:48 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EB6C52B9067;
 Thu, 26 Mar 2020 17:26:47 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 26 Mar
 2020 17:26:47 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 26 Mar 2020 17:26:47 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Neil Armstrong <narmstrong@baylibre.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: dwc2: fix bindings for
 amlogic,meson-gxbb-usb
Thread-Topic: [PATCH] dt-bindings: usb: dwc2: fix bindings for
 amlogic,meson-gxbb-usb
Thread-Index: AQHWA4kfrKmvM7C2NESne7Y0qff0Aqha/tkA
Date: Thu, 26 Mar 2020 16:26:47 +0000
Message-ID: <e7820b83-670d-f619-c5fa-8c97379a6471@st.com>
References: <20200326161046.12111-1-narmstrong@baylibre.com>
In-Reply-To: <20200326161046.12111-1-narmstrong@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <8C128BFFBE124340B62493BB8102458F@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-26_08:2020-03-26,
 2020-03-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_092700_942089_A16B8D35 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/26/20 5:10 PM, Neil Armstrong wrote:
> The amlogic,meson-gxbb-usb compatible needs snps,dwc2 aswell like other
> Amlogic SoC.
>
> Fixes: f3ca745d8a0e ("dt-bindings: usb: Convert DWC2 bindings to json-schema")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   Documentation/devicetree/bindings/usb/dwc2.yaml | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
> index 71cf7ba32237..b7b9ddcbc637 100644
> --- a/Documentation/devicetree/bindings/usb/dwc2.yaml
> +++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
> @@ -49,7 +49,9 @@ properties:
>         - items:
>             - const: amlogic,meson8b-usb
>             - const: snps,dwc2
> -      - const: amlogic,meson-gxbb-usb
> +      - items:
> +          - const: amlogic,meson-gxbb-usb
> +          - const: snps,dwc2
>         - items:
>             - const: amlogic,meson-g12a-usb
>             - const: snps,dwc2
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
