Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19D110262
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 00:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRQ4Y3hn13K76caAWatVUYInT+CvsEFTm4im7fCHv+0=; b=hfb1l/6HMdYK7x
	cfDPUrvjxwYIoigmPGgCW9rFNjAuuqgu82vV1M2Pjg3x9Tm6L48cPuUxhbtk2uhjc2O0uUjjLKpeA
	RyoZa150lZ1ZPSK8iVFXdNB6f3hoY6BIdLNDvi+J7l/Xby+y1VmFtDLB+Wtdqy22t5OgZaP+HaHEO
	AEpI6yYUoPDR6Nm77eV8hz1arAen5Va6Yh59Ex3m5ytdVpdERBCatEL6b9xSpV4WhU5i5ZGNQx0wi
	tfVdzwjW8eJfjqr3/LgGuZ9fFszU34NtudwBbQjeug3O1qBjoBR5jFI/XZydRFNKIN4S0eEZeXUVR
	+nI1ByGUVSMlL2A7YiJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLbHf-0003CE-TM; Tue, 30 Apr 2019 22:31:31 +0000
Received: from mail-eopbgr720135.outbound.protection.outlook.com
 ([40.107.72.135] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLbHX-0003Bp-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 22:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a7JwGOlbx1AbXFguFHLajH7K1ZhljEf5PLbxOYRrE+M=;
 b=VBObJYNyMcV5u2aD2t6r/tpJqK7rAqqa7IsnA4uH7fEQTx2bgHzkLi1Pm0Gb5jDlkWFEwWk1bSzdPlVROpmnIej+mH0SXgfVUXaUiR1mxe6tt7swFS9srptQwpFNCNCeQJeVuf1n/fNWeNCFyjNBb0fdTY+EPpb0mAebyOjReEM=
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3738.namprd06.prod.outlook.com (10.167.236.143) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 30 Apr 2019 22:31:19 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::2d6d:7e4b:d2ff:5e29]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::2d6d:7e4b:d2ff:5e29%3]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 22:31:19 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] rtc: st-lpc: remove unnecessary check
Thread-Topic: [PATCH] rtc: st-lpc: remove unnecessary check
Thread-Index: AQHU/5H32hcx4X+jhEK8dI4HvkdrpqZVSbiA
Date: Tue, 30 Apr 2019 22:31:19 +0000
Message-ID: <1556663479.31309.36.camel@impinj.com>
References: <20190430201834.12634-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20190430201834.12634-1-alexandre.belloni@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tpiepho@impinj.com; 
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17cc9cd4-7af0-4970-84a8-08d6cdbb9147
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3738; 
x-ms-traffictypediagnostic: MWHPR0601MB3738:
x-microsoft-antispam-prvs: <MWHPR0601MB37386880D9DAED61321E0EB1D33A0@MWHPR0601MB3738.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39850400004)(396003)(346002)(136003)(376002)(199004)(189003)(66946007)(66446008)(64756008)(73956011)(66556008)(66476007)(8936002)(305945005)(91956017)(68736007)(76116006)(66066001)(53936002)(7736002)(6246003)(3846002)(2501003)(71200400001)(71190400001)(86362001)(2201001)(229853002)(110136005)(54906003)(6512007)(81166006)(81156014)(76176011)(99286004)(8676002)(4326008)(2906002)(36756003)(6506007)(6486002)(103116003)(478600001)(6436002)(102836004)(25786009)(316002)(26005)(186003)(486006)(6116002)(14454004)(5660300002)(476003)(2616005)(446003)(11346002)(256004)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3738;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: impinj.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Tx8lNRcAz/7F3aldfFtEXp9Fue9YisqVqVeSvZwAkO2pGM4xRotWBhifOmISGOBjbIYoeHEYLlcWHChHZ53ILTj9iEuo7kv3CQ/0iwcWSIFo9OgjG/WF9v4JEuEn+hqZA0X48NT1CBzz9RpKIWJzDa62qbcuXUVpLJcNT/dzkQr6WXmiGkcOnYePvGNzjdGt9IUaHX3dHP4LSS3ih0Y46JLZXfVIt6+3rISSdGgxMvV81x7Uio7qXHeX6/nwn5LZ0/37ybPTjmW+Fo/o9WTTt4plChGSUDistxHz+3BbMXTVCDA/3xaZwPNn2bmRnqYLrfhqa2cTPCW5OiZwbYwFSVcCKgeQi8r2J1m78HS1tLAUpNkBvGJcYnsrf4OMr40lWselt7g2fA8dcadRapL0wlrn3L/lOkxJl4Wq6ouHbTk=
Content-ID: <352C3F422848634E83D54198D4A165FD@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17cc9cd4-7af0-4970-84a8-08d6cdbb9147
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 22:31:19.8484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_153123_564053_B440BF39 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-04-30 at 22:18 +0200, Alexandre Belloni wrote:
> The RTC core already ensures the alarm is set to a time in the future, it
> is not necessary to check again in the driver.

My reading of the rtc core code is that it checks if the alarm is in
the future *twice* before handing off the set call to the driver, which
possibly checks a 3rd time (as seen here).

However, all these checks are done *before* setting the alarm.  It
still possible to have a race and set the alarm after the time has
already passed, in which case the alarm will never fire.

The way to fix the race would be to have the driver check the alarm
*after* setting it.  In precisely this order, do these steps:

1. Set alarm in RTC, to Talarm
2. Get time from RTC, as Tcurrent
3. Get alarm status from RTC

If Talarm < Tcurrent, alarm was set to future time, no error
Else
  If status == fired, alarm was set and has since fired, no error
  Else status == not fired, alarm was set in past, EINVAL

This should be race free.


>  
> -	/* Invalid alarm time */
> -	if (now_secs > alarm_secs)
> -		return -EINVAL;
> -
>  	memcpy(&rtc->alarm, t, sizeof(struct rtc_wkalrm));
>  
>  	/* Now many secs to fire */
        alarm_secs -= now_secs;
        lpa = (unsigned long long)alarm_secs * rtc->clkrate;

While it's true the time wouldn't normally be in past, it still races,
as describe above. In that case, the math here underflows alarm_secs,
so it probably still makes sense to check.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
