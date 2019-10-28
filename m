Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82369E74D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 16:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hQVNVSKj8YhhHT6taXIrT7wnQSwZHdQBN2lOcQ/wvgc=; b=BURzDPuLxZ31JX
	PBn2cmDteDpKXGCT9LnFepjeen+0Dm/10EtbZMQV7ZSOk31GqXj0trdNXdgsw+5aeL8fLtjIGJ0vH
	1vLy+6oBUGFTNhfzl8DQv7MBatjjl7Es/MF3I0AXUdWg5TMU1cKtVN/KqKge2WlmBmblyoQKzR+/W
	I/NsMxSDh8B1Mvpjzht0pg+9p/8ptajkjn6gmwrc1qFGJz1Wx8w7n7i7s7xuWXX/ADqsgdeBx+xx5
	x7tPlopmCjQI8nzU6Ml/IyNl5QagJCERF8Iq5i7C3dhILSBuqkMnN5W+KvF6Bw5icOoU/zlns6W0w
	95PrPGea6HWvBno6mvOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6mk-0001ly-5o; Mon, 28 Oct 2019 15:18:22 +0000
Received: from mail-oln040092071089.outbound.protection.outlook.com
 ([40.92.71.89] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6mZ-0001lR-Rv
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 15:18:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nUauDsem3hIZHomg1MQHbCt+d96g7u89DYiyNMBF4hEDrSm4U2uboJNM0GJ2BzFtyNSL/YMbUfT+U1Ljx/yAzvW34qRFaqXGHwfgd9QviPJD6SbDi1VEV0bmGSxARgQqAuaPgkAbsKTqDH/mSQGpxdpfx2l1qUUOddofOpi9zX2kGBUjA0kVwAzGblJ1gMf5kZpXV4EjhBj4xAUL4EXFOEy33ZV/Fn1rocX6KuYMdspH6BZL8hfuJket2tNhebZm3qTDsbUSV0/eyTrQpqwjzoygX+GiDPpxEIZbGH+XB4Zq9ilXtpCth7yS88lqJyWE/KpfZCiByfAkarpGmk/jSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i4E1rdkWgf4DY8hM2IUaW2QANftY74qcxGWCC+ZimAc=;
 b=n3bj+E3shOUJp6F46Zczts2bqubS1cv4/fEP6PIP1+bXEOIPh1pFP5/jbluB5XiJfPnQ2C6/mJWo007CzfAKq0HYCsEzBmF7CVuAAqfHJJKfRGh6NqbYDD+cfzk21URof0MoEK5xWnWibErqol9fU6P7vx8Xe9boNDriNgTplN05oVyynJ7g0HWrrNyVfOwhUxeM/wbPwNglmVxj2LDwJ9I/gdnvKYF6JWlyFaSrHzylrt55NodgJcJ1qKYsHS8JaB0KXWgTJIH4VtOpheNPD0HIAqF4cRoObjbEBx2GA//3C/zxFK5OQ+1spfAGeRWRS3JlTJSP90I8RHIYccQqyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i4E1rdkWgf4DY8hM2IUaW2QANftY74qcxGWCC+ZimAc=;
 b=GJxuXFL8v4FzEUa2gbnRqr59/1V90/0bK6INVMULc5HZwr7qQHMMOVHRpGkBaPLLrMFkQ8FeGLEIDiVCk9c48YZinWVmINpFYRG/OsixYAb6MZMM1R6UhBAhhLdColWuCuMXp07tUDlk44ThGSCmHzvWKouemZWTTWASc2lzLdW4NNMxDcHVo7rUHRaSstm7dUyVsLbg6hh8v0/XIcU/x3aEuBrbw4P4jICm8Cn9R3oKsjfEQM8lPWcBjPIiVEB8J8DX3j/ZVGk0p62ds+jI/unQ6Em+uGZYROFkssEGC834p3G4sES1gwLf6CZ0x2SLhQ/2S/RhkSQBmE+GN0QXhA==
Received: from VE1EUR03FT020.eop-EUR03.prod.protection.outlook.com
 (10.152.18.58) by VE1EUR03HT207.eop-EUR03.prod.protection.outlook.com
 (10.152.19.243) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.20; Mon, 28 Oct
 2019 15:18:06 +0000
Received: from DB7PR08MB3801.eurprd08.prod.outlook.com (10.152.18.54) by
 VE1EUR03FT020.mail.protection.outlook.com (10.152.18.242) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20 via Frontend Transport; Mon, 28 Oct 2019 15:18:05 +0000
Received: from DB7PR08MB3801.eurprd08.prod.outlook.com
 ([fe80::21c9:539b:1ad1:8ec4]) by DB7PR08MB3801.eurprd08.prod.outlook.com
 ([fe80::21c9:539b:1ad1:8ec4%7]) with mapi id 15.20.2387.023; Mon, 28 Oct 2019
 15:18:05 +0000
From: David Binderman <dcb314@hotmail.com>
To: "mmayer@broadcom.com" <mmayer@broadcom.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "rjw@rjwysocki.net"
 <rjw@rjwysocki.net>, "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: drivers/cpufreq/brcmstb-avs-cpufreq.c:449: bad test ?
Thread-Topic: drivers/cpufreq/brcmstb-avs-cpufreq.c:449: bad test ?
Thread-Index: AQHVjaKCM2IvLuSwrkm5g96lBPfVAg==
Date: Mon, 28 Oct 2019 15:18:05 +0000
Message-ID: <DB7PR08MB38017C35D2B5E025804338129C660@DB7PR08MB3801.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:062831ADD149A5A09967D864BB52FA9DB2CB814538CE2969D96DFC5105086502;
 UpperCasedChecksum:D01AAD41304BA72BCA3F225A116E3A2232313215A92017B567FE61A4B22EA71F;
 SizeAsReceived:7262; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [AaKbNNN9EpF0OWuXyVZFuSO8dC8DPWSRG4IkcequAKDdPss/qwkefF57gafiv7LN]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: VE1EUR03HT207:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mJ2NkG0cjbL394+OQ7bVwIN1EkrE6XrjbnEFDXknhuJGvU7uDzDMso3Lszu9qa+ajslO15MbtILmvZE6YYQeFv2tP6NS4udn7h5zPpSxrRGcZpRbz07Wqazg+6MRR7tKynWjLUv9503UBJ+ZpGcMyK/9V95tjIBaRxz7qg7AbObAmZMT7xcWWwIMH9y3qxsQ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 41d300fb-9be0-42fd-a9e3-08d75bba0868
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 15:18:05.8256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_081812_082425_16B1ED7E 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.71.89 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dcb314[at]hotmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dcb314[at]hotmail.com)
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello there,

drivers/cpufreq/brcmstb-avs-cpufreq.c:449:61: warning: logical =91or=92 of =
collectively exhaustive tests is always true [-Wlogical-op]

Source code is

    return (magic =3D=3D AVS_FIRMWARE_MAGIC) && ((rc !=3D -ENOTSUPP) ||
        (rc !=3D -EINVAL));

Maybe better code:

    return (magic =3D=3D AVS_FIRMWARE_MAGIC) && (rc !=3D -ENOTSUPP) &&
        (rc !=3D -EINVAL);

Regards

David Binderman


Mayb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
