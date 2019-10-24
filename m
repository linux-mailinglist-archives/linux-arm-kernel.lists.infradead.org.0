Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62ECE2ABF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h11fbpm/4E1VEVsto8YPgwy4w9qjcI828NvVCc0Ii9M=; b=JD+xOS39qpkoXE
	KCFQ8MvfXs0foHcmMIRRXbCZdZJ27hjyxyF1+uKlyAUlMZNgzrBzOeEImS6eMTtato6M8RuEdgRVM
	uOC7JHnSc86OLzvBjFIXsOX5XJSPBTSMyMk+o/u9wL2+QDwTlcu5DxcAg8MGyeFvbNn62NvgI+l9b
	7eKs1Aoks9vEFI0tRUZzYV7Nd2Cq9f+fsPj8jLibmjgVy7JtzJxsas1XvVnyr3W8CBNHtlPctRZ21
	4S7kUldl44hUDWmA7WYjfymq0nwtazzTBLrKQq96V441uo3QE34+rRjq1zJqeyOCpDKgYq9prY4fc
	w5D8Nb15A2Apw+eH6AKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXC4-0006ee-Dq; Thu, 24 Oct 2019 07:06:00 +0000
Received: from mail-eopbgr700068.outbound.protection.outlook.com
 ([40.107.70.68] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXBt-0006dd-2z
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 07:05:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbVA8L7QX97TNVMqRi9V2koKGEcop8CpYBES1e5ytjd9rYm5CuDzNOZbKWzz0htGta3Su1Wb/TrhhHW/WcpAd5Wf8PR5twxSwGC2Rh3NmaUL0mjCpnv9bX70FdYhNQVXw7WAJm5vPh1DgaGYQNUqPrR7961rqQCsOpXYxy/0aTO8tKvXylKCg/pkj0v4CJ4lNlB1SjjDwjV7mJ/Srv1aiVH9pObynp2pKA9132ef53XWk/16Yksgt+rrIJxOR3KKnpTVvuN9DLik5tcHLtQwo6RPIk6+Pwg4wlnM0soVbV0Sg4pzp8+FF/2199n4IpXCja/0tR7pB2/xQmwcDbPLmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rG1wUMBVPW92nYsel+P+8ourbEMrkn6wxCSuS9+YOwE=;
 b=CbOKOEj64BZ3JAAGYDmM9amoFMvzXxvmfZnpv+QnRn6rIDy2VIgdYDg0QY3V/zC2bXeasJrcl0M8+tuVoTOz7qXdrLCPca/kSWCdzV/wiXUTMEYJ3NtnHsQR6irce0sB2+3ProtzDH58uCsVx7F2qznj6o1SqYAX8Wj87/uatvlQhgfnTZORmxvgEvWmYbEjhdz3IwWwgfAVA+ZqSQvpmC5tna1gQsQOjplx3+e9YYRJeGEkqe0OktVhCnuDhJDvDszm4l1buFmqPeLyVyq0nhqSFpVNLvikHE4z/8IP/p0Skdns8F1/ifmmvoI+iQpN4lky3JMimSNz4xOjL8eLSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rG1wUMBVPW92nYsel+P+8ourbEMrkn6wxCSuS9+YOwE=;
 b=e4AupsV9wW2UEkvStlFbnBzQ4EsV4v/hRUR1y5KHo8yQGksQcY/8N+PtA3qkFeHjEMjoOs+ZtKZxDeDuBq7b5i1RVg+hIolKfOd71YSRpFzJ+dFOSr3WhV8gePL92Iw+KTrO5102rOnXw/vRNYCPJDXc0fskmSOiBa6TaSjKRtI=
Received: from MWHPR02CA0043.namprd02.prod.outlook.com (2603:10b6:301:60::32)
 by DM5PR02MB2380.namprd02.prod.outlook.com (2603:10b6:3:56::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.22; Thu, 24 Oct
 2019 07:05:45 +0000
Received: from SN1NAM02FT027.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by MWHPR02CA0043.outlook.office365.com
 (2603:10b6:301:60::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2367.21 via Frontend
 Transport; Thu, 24 Oct 2019 07:05:45 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT027.mail.protection.outlook.com (10.152.72.99) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Thu, 24 Oct 2019 07:05:44 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iNXBo-0002SS-4O; Thu, 24 Oct 2019 00:05:44 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iNXBj-0001bb-1O; Thu, 24 Oct 2019 00:05:39 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x9O75WMa007727; 
 Thu, 24 Oct 2019 00:05:32 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iNXBc-0001VL-4J; Thu, 24 Oct 2019 00:05:32 -0700
Subject: Re: [PATCH] ARM: dts: zynq: enablement of coresight topology
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <a38ab93d870a3b1b341a5c0da14fc7f3d4056684.1570630040.git.michal.simek@xilinx.com>
 <CANLsYkzkk9yPezSyU50TmWjDAZ-5D2Hmo0YztQzm+mnyZf1Www@mail.gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <5100bc31-66b4-f892-7916-d049e6e5d668@xilinx.com>
Date: Thu, 24 Oct 2019 09:05:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CANLsYkzkk9yPezSyU50TmWjDAZ-5D2Hmo0YztQzm+mnyZf1Www@mail.gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(136003)(396003)(376002)(346002)(189003)(199004)(6246003)(76176011)(336012)(426003)(23676004)(2486003)(58126008)(356004)(6666004)(26005)(31696002)(126002)(230700001)(305945005)(31686004)(486006)(186003)(446003)(11346002)(2906002)(2616005)(476003)(106002)(5660300002)(70586007)(70206006)(36756003)(7416002)(36386004)(65806001)(4326008)(81156014)(65956001)(81166006)(478600001)(47776003)(9786002)(8676002)(8936002)(110136005)(316002)(54906003)(50466002)(44832011)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2380; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aa110766-7f84-417b-7e1c-08d7585096d5
X-MS-TrafficTypeDiagnostic: DM5PR02MB2380:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR02MB238010104C54938E6A357075C66A0@DM5PR02MB2380.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0200DDA8BE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zkKDO5RY7hTLDdilU5pnW8FcX4o3A4zsaw4S/GOikdodM0X9tIhNZ8EVtlUMG4FU4oKQlf9IEs4++TIhiUp8g2LqutXPePHP89nYPyOUlpmwRfxx+RdASc4YC9ogdcNyLwl9CS9Jp2htnM2DrAtHO4oVS3m5WAYUIO2jZIBB4myGwf9ec3JrVdbFgfBiMkjY3jDYmKOYYuUG9zHikoHSPahIa3skS0bnxGaOtWAHMlAH1YxVJSaflQ3Vnbo6fyPhy+8wvCacEnee6juFYDsuxYo+We1zjQOV6VS5a6Ne4Iqp+S0rb1XJuImWFx+KYKOZ9QTDTmrMS3sVFJus2tB+hTBcJj9KqXKk+D1cEVnVjyC1ES1oTcHTWkygR4q142z1t2XO6Tf6g5r/zXqBNI6R5sgACMDJR0fMUpc7XsakHtDp25EFbiVLOmqDfSpcRTg/
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2019 07:05:44.5574 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aa110766-7f84-417b-7e1c-08d7585096d5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2380
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_000549_183800_5742CE95 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Michal Simek <monstr@monstr.eu>,
 Peter Crosthwaite <peter.crosthwaite@xilinx.com>, devicetree@vger.kernel.org,
 Zumeng Chen <zumeng.chen@windriver.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, u-boot@lists.denx.de,
 Rob Herring <robh+dt@kernel.org>, Rob Herring <robherring2@gmail.com>,
 git@xilinx.com, Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Quanyang Wang <quanyang.wang@windriver.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 23. 10. 19 19:32, Mathieu Poirier wrote:
> Hi Michal,
> 
> I was not CC'ed on the original post so I just noticed this today,
> hence the late reply.  I don't know if you were looking for feedback
> or already picked up the patch but here it is anyway.

I haven't put the patch to my zynq/dt branch yet. And definitely any
feedback on this is welcome.


> 
> On Wed, 9 Oct 2019 at 08:07, Michal Simek <michal.simek@xilinx.com> wrote:
>>
>> From: Zumeng Chen <zumeng.chen@windriver.com>
>>
>> This patch is to build the coresight topology structure of zynq-7000
>> series according to the docs of coresight and userguide of zynq-7000.
>>
>> Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
>> Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>> ---
>>
>>  arch/arm/boot/dts/zynq-7000.dtsi | 158 +++++++++++++++++++++++++++++++
>>  1 file changed, 158 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
>> index ca6425ad794c..86430ad76fee 100644
>> --- a/arch/arm/boot/dts/zynq-7000.dtsi
>> +++ b/arch/arm/boot/dts/zynq-7000.dtsi
>> @@ -59,6 +59,40 @@
>>                 regulator-always-on;
>>         };
>>
>> +       replicator {
>> +               compatible = "arm,coresight-static-replicator";
>> +               clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
>> +               clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
>> +
>> +               out-ports {
>> +                       #address-cells = <1>;
>> +                       #size-cells = <0>;
>> +
>> +                       /* replicator output ports */
>> +                       port@0 {
>> +                               reg = <0>;
>> +                               replicator_out_port0: endpoint {
>> +                                       remote-endpoint = <&tpiu_in_port>;
>> +                               };
>> +                       };
>> +                       port@1 {
>> +                               reg = <1>;
>> +                               replicator_out_port1: endpoint {
>> +                                       remote-endpoint = <&etb_in_port>;
>> +                               };
>> +                       };
>> +               };
>> +               in-ports {
>> +                       /* replicator input port */
>> +                       port {
>> +                               replicator_in_port0: endpoint {
>> +                                       slave-mode;
> 
> The slave-mode property is no longer required and probably an
> oversight since it doesn't appear elsewhere in this patch.

likely yes. I will remove it.

> 
>> +                                       remote-endpoint = <&funnel_out_port>;
>> +                               };
>> +                       };
>> +               };
>> +       };
>> +
>>         amba: amba {
>>                 compatible = "simple-bus";
>>                 #address-cells = <1>;
>> @@ -365,5 +399,129 @@
>>                         reg = <0xf8005000 0x1000>;
>>                         timeout-sec = <10>;
>>                 };
>> +
>> +               etb@f8801000 {
>> +                       compatible = "arm,coresight-etb10", "arm,primecell";
>> +                       reg = <0xf8801000 0x1000>;
>> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
>> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
>> +                       in-ports {
>> +                               port {
>> +                                       etb_in_port: endpoint {
>> +                                               remote-endpoint = <&replicator_out_port1>;
>> +                                       };
>> +                               };
>> +                       };
>> +               };
>> +
>> +               tpiu@f8803000 {
>> +                       compatible = "arm,coresight-tpiu", "arm,primecell";
>> +                       reg = <0xf8803000 0x1000>;
>> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
>> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
>> +                       in-ports {
>> +                               port {
>> +                                       tpiu_in_port: endpoint {
>> +                                               remote-endpoint = <&replicator_out_port0>;
>> +                                       };
>> +                               };
>> +                       };
>> +               };
>> +
>> +               funnel@f8804000 {
>> +                       compatible = "arm,coresight-static-funnel", "arm,primecell";
>> +                       reg = <0xf8804000 0x1000>;
>> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
>> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
>> +
>> +                       /* funnel output ports */
>> +                       out-ports {
>> +                               port {
>> +                                       funnel_out_port: endpoint {
>> +                                               remote-endpoint =
>> +                                                       <&replicator_in_port0>;
>> +                                       };
>> +                               };
>> +                       };
>> +
>> +                       in-ports {
>> +                               #address-cells = <1>;
>> +                               #size-cells = <0>;
>> +
>> +                               /* funnel input ports */
>> +                               port@0 {
>> +                                       reg = <0>;
>> +                                       funnel0_in_port0: endpoint {
>> +                                               remote-endpoint = <&ptm0_out_port>;
>> +                                       };
>> +                               };
>> +
>> +                               port@1 {
>> +                                       reg = <1>;
>> +                                       funnel0_in_port1: endpoint {
>> +                                               remote-endpoint = <&ptm1_out_port>;
>> +                                       };
>> +                               };
>> +
>> +                               port@2 {
>> +                                       reg = <2>;
>> +                                       funnel0_in_port2: endpoint {
>> +                                       };
>> +                               };
>> +
>> +                               port@3 {
>> +                                       reg = <3>;
>> +                                       funnel0_in_port3: endpoint {
>> +                                               remote-endpoint = <&itm_out_port>;
>> +                                       };
>> +                               };
>> +                               /* The other input ports are not connect to anything */
>> +                       };
>> +               };
>> +
>> +               /* ITM is not supported by kernel, only leave device node here */
>> +               itm@f8805000 {
>> +                       compatible = "arm,coresight-etm3x", "arm,primecell";
> 
> If I remember correctly ITM and ETMv3 are quite different - please
> remove entirely.

This was commented already. Definitely "arm,coresight-etm3x" should be
removed. arm,primecell could stay there.

Do you think that make sense to remove it completely because I expect
that connection to funnel should be aligned with others.

> 
>> +                       reg = <0xf8805000 0x1000>;
>> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
>> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
>> +                       out-ports {
>> +                               port {
>> +                                       itm_out_port: endpoint {
>> +                                               remote-endpoint = <&funnel0_in_port3>;
>> +                                       };
>> +                               };
>> +                       };
>> +               };
>> +
>> +               ptm@f889c000 {
>> +                       compatible = "arm,coresight-etm3x", "arm,primecell";
>> +                       reg = <0xf889c000 0x1000>;
>> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
>> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
>> +                       cpu = <&cpu0>;
>> +                       out-ports {
>> +                               port {
>> +                                       ptm0_out_port: endpoint {
>> +                                               remote-endpoint = <&funnel0_in_port0>;
>> +                                       };
>> +                               };
>> +                       };
>> +               };
>> +
>> +               ptm@f889d000 {
>> +                       compatible = "arm,coresight-etm3x", "arm,primecell";
>> +                       reg = <0xf889d000 0x1000>;
>> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
>> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
>> +                       cpu = <&cpu1>;
>> +                       out-ports {
>> +                               port {
>> +                                       ptm1_out_port: endpoint {
>> +                                               remote-endpoint = <&funnel0_in_port1>;
>> +                                       };
>> +                               };
>> +                       };
>> +               };
> 
> With the above:
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>


Let's discuss that ITM part first and definitely thanks for review.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
