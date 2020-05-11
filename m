Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7251CE4D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g52R904kAYOpQ3S3/pXbQ6TVh8277fepm8vQHzb0YtA=; b=aw8eBrqVSvIpH7
	875oOAUf9rdU3nPn3ufNJihVMXekdRu2nBXgGl4KoO+xN6XMQOCAQr/uxJJY4zOfov9D82XBtHTiW
	9KI2QOdhPzclW/dhCiBPzsA4I9Jh8LQgDyeaNwmV7x3MyUnqo8kMG8Y/I0KxiPih3koOlxhkPr/Zn
	//mrRmGkmWYBLZATN5F4sgmdsUpUYJ31iRW2LlIzU0OfOZB/vIX70AMD/MBrVYf1FzCJSDNiPH2M4
	5kdhSXpzlmbz9XBi1CnTCRTuyBNJfl4bW24qjZt67q4rB44MJs6e/R9wnOHvqMKn0F+elesTM2COj
	rPKqz1PWCcqbn4bp0Mxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYEVj-00034O-8e; Mon, 11 May 2020 19:54:47 +0000
Received: from mail-oln040092009090.outbound.protection.outlook.com
 ([40.92.9.90] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYEVb-000340-1K
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 19:54:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUDmzzUDI02pF8V3/IOxVAhSxSZEnwsNrbXg7AfZPDTLh8Zjc6FC8DJxb6AXNs+uWirxptpuFepXMBTJXQjbeOx1pu2mLVvLeLtIeyP8IVCh6yh4T9IwUo+QEkgD4edeGpKioSRhzTULNChlQuu2gW+8c8sNDsaj73MXL939HGmHVc03oxM5eVf0W3HrBdSqlxktEkf23rGoheqzW9dDgQdFSkTG2owrnXPawIKncKbdXam7obOE/ui8cPyGq2ZtyOeT/sUd6dU9F+Re4Qy6hpyHtONBPUi39RjBzlXUlCidrfUnDtsrWQWVOY+zSetvS/nYxfgAxnVyqd+X0BDUiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPe79cHYrLT7fgnm2xmrMQZ2LOTrgl7ADSAeP23qE8A=;
 b=nOYUbV4SkLmFsp4h5TBQ2viVkrgc9S1odFbwk0YPOrQdODEd+72FsS3eVh3qF8lrD3pa9/cQ0coB/f+LrJpc/BddKja4groHs7mW6ABkjPwdCGT14ZcSiBUj4340tbG5IUq61Shk40uiX0Pc11iRaAYCrDxsAbOrb9Nq2PKuIA0cVngGD0Tx16j9y9UAMOxhnMvO79crKYk9OJNTFKtBDOD/c+W5ePOEN+rUgYj7By9bull0XJmmOtqoCC7sM6WlQsxSYPaQpwetd6cNhUqXOTgInsScmIK3w5DN3LOh6VdcJy0peQrds+mD2Xp0xodxemGmFrhw8JmZ8umd0iEHtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from SN1NAM04FT055.eop-NAM04.prod.protection.outlook.com
 (10.152.88.54) by SN1NAM04HT120.eop-NAM04.prod.protection.outlook.com
 (10.152.89.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Mon, 11 May
 2020 19:40:21 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:7e4c::50) by SN1NAM04FT055.mail.protection.outlook.com
 (2a01:111:e400:7e4c::276) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27 via Frontend
 Transport; Mon, 11 May 2020 19:40:21 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:72E7EE7FA8188B73B014FD6571BA844966295E2419F5255A20FE51EC8D36D6A4;
 UpperCasedChecksum:F1D8481A5A4CBA010304E954551F802575924E9DA2F1B2C6E9DA84A6B162EFB1;
 SizeAsReceived:9121; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 19:40:21 +0000
Subject: Re: [PATCH] tty: serial: samsung: Correct clock selection logic
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <BN6PR04MB06604E63833EA41837EBF77BA3A30@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200511100836.GA16828@kozik-lap>
From: Jonathan Bakker <xc-racer2@live.ca>
Message-ID: <BN6PR04MB0660B66569974294E24F2044A3A10@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Mon, 11 May 2020 12:40:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <20200511100836.GA16828@kozik-lap>
Content-Language: en-US
X-ClientProxiedBy: CO2PR04CA0156.namprd04.prod.outlook.com (2603:10b6:104::34)
 To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <3f94a7d6-65c7-4fa7-f4b2-2ddc9fec10cb@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb68:9c00:8067:f823:1e15:7520]
 (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 CO2PR04CA0156.namprd04.prod.outlook.com (2603:10b6:104::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 19:40:20 +0000
X-Microsoft-Original-Message-ID: <3f94a7d6-65c7-4fa7-f4b2-2ddc9fec10cb@live.ca>
X-TMN: [MtnCR6rpauK6C5JN3dkav6WAQlB48U8Sy0q1NXDY52gErLx89AGZ6RkEzfSXVh5Z]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 47665e5e-5e92-41dc-9ba3-08d7f5e32444
X-MS-TrafficTypeDiagnostic: SN1NAM04HT120:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9PQn66Nm+45+3rLWORJVcsu7zKbS5wgJbrAwd/Uwg1mN8msulqhQqsbTY8XynQWtmaQQfmIIFN6IhazkyGSYG9zVaDLK1gfJldHov3kON1n+UC6Diw20tiO9pkDDOzjJvY+qxpbhnnpd5M7zRJmaifG86Bwfa4uPiG1gDqRubPnSCiQUZ6HLSGn+ozO64Ij5SYG8r3pGoQwXIXwDRI2iTA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: ys4YbTpP2aQc1OzRWZPI9MGDprNkLvOE9GZAG3IAra7A8SLbCMKZYI9FOHkrdYel5YzErwcMZJNdOD2E/BhCKBY5f548UfsynV3Yn/3AC/NtJhdRT3tSOTgyMCTSzBwzIihLn9sjvsRL4RafvTLULza4C9HoOecSVPIHBIv27RzHkKo3yih5lRkHxoQ+o5vdNRjeWbPnWdjGLICQLcIU8g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47665e5e-5e92-41dc-9ba3-08d7f5e32444
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 19:40:21.6769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM04HT120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_125439_085455_A2A01248 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.9.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.9.90 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
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
Cc: linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kgene@kernel.org, linux-serial@vger.kernel.org,
 jslaby@suse.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 2020-05-11 3:08 a.m., Krzysztof Kozlowski wrote:
> On Fri, May 08, 2020 at 06:34:33PM -0700, Jonathan Bakker wrote:
>> Some variants of the samsung tty driver can pick which clock
>> to use for their baud rate generation.  In the DT conversion,
>> a default clock was selected to be used if a specific one wasn't
>> assigned and then a comparison of which clock rate worked better
>> was done.  Unfortunately, the comparison was implemented in such
>> a way that only the default clock was ever actually compared.
>> Fix this by iterating through all possible clocks, except when a
>> specific clock has already been picked via clk_sel (which is
>> only possible via board files).
>>
>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>> ---
>>  drivers/tty/serial/samsung_tty.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
>> index 73f951d65b93..9d2b4be44209 100644
>> --- a/drivers/tty/serial/samsung_tty.c
>> +++ b/drivers/tty/serial/samsung_tty.c
>> @@ -1281,14 +1281,14 @@ static unsigned int s3c24xx_serial_getclk(struct s3c24xx_uart_port *ourport,
>>  	struct s3c24xx_uart_info *info = ourport->info;
>>  	struct clk *clk;
>>  	unsigned long rate;
>> -	unsigned int cnt, baud, quot, clk_sel, best_quot = 0;
>> +	unsigned int cnt, baud, quot, best_quot = 0;
>>  	char clkname[MAX_CLK_NAME_LENGTH];
>>  	int calc_deviation, deviation = (1 << 30) - 1;
>>  
>> -	clk_sel = (ourport->cfg->clk_sel) ? ourport->cfg->clk_sel :
>> -			ourport->info->def_clk_sel;
>>  	for (cnt = 0; cnt < info->num_clks; cnt++) {
>> -		if (!(clk_sel & (1 << cnt)))
>> +		/* Keep selected clock if provided */
> 
> Makes sense and good catch.
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> I wonder about the s3c24xx_serial_enable_baudclk() which has similar
> pattern - is there
> testing only def_clk_sel on purpose?

Yeah, I saw this instance too.  5086e0a409a0c ("tty: serial: samsung: Enable
baud clock during initialisation") introduced it, which was just to make sure
that some clock was enabled during initialization.  Since it doesn't appear to
be critical which clock it is, I left it as it was.

Thanks,
Jonathan

> 
> Best regards,
> Krzysztof
> 
>> +		if (ourport->cfg->clk_sel &&
>> +			!(ourport->cfg->clk_sel & (1 << cnt)))
>>  			continue;
>>  
>>  		sprintf(clkname, "clk_uart_baud%d", cnt);
>> -- 
>> 2.20.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
