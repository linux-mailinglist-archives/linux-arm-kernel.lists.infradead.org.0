Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F95017CDD0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 12:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOD1d2ToHLMMMlQPQ1yZkfPMVzAHXDuCU6CULoWTDMQ=; b=UvT7DCLq7GW8w3
	EQIZPvN3F/QBktYgzK9tZp08A/gT9gCssUOHbqEGLH1cbpaBF57tV8XwFOeTG6W1M+XmM+IxXaPWr
	gK5rYdftJB76coOw+blqOAnPhfhBwjxi2BffXln9L68BjNLEZLb1etZdKmkq3cdQzwi7xT166JFBh
	MSJrYWJU6wuvAdEPZhkpzAqVQpeMLm2NbkTFUFc/IplI4/FJNMDKHnTSDLTVT9iHvfzygUOoMm4eZ
	oalZm/mnHiFx/VnQrY3UNyXmjPzv/mKD9TIYw5E45OGYUBUwdd++z8R/Gdsmo3EP0aNiIz0z3wc2z
	1yN8tUCQoYDTgOcPI1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAXfi-0000kn-9k; Sat, 07 Mar 2020 11:31:10 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAXfX-0000k0-PE
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 11:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1583580660; x=1615116660;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:mime-version: content-transfer-encoding;
 bh=DFpsOxrHOqsf0PQAJMXueEicUk8UR3W/BgR/3MNxtGQ=;
 b=BUxR+dJVOJl+e36O3Df+YDoggZqzopFM4bnnDJlanL82O82gFYhpeoSh
 Y2x5idQVk7hbcXlmg69fovB3ZD+pYiSJpMgbc4IvwR30oMvhE1LejK3c+
 YLPyCS/tJW8cjLw3YvHKjKbglye0pnO5zYSKcoJkow+OGOewEprMYTCgr 4=;
IronPort-SDR: TVStLvUeAY3cWlpbB4oPKkh+oDA9sILjqRezunIG3dlMAeC36jziCEbc+HO8qYdc6zwS/hZK9v
 dhgte9maTtDQ==
X-IronPort-AV: E=Sophos;i="5.70,525,1574121600"; d="scan'208";a="29821054"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2c-168cbb73.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 07 Mar 2020 11:30:51 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2c-168cbb73.us-west-2.amazon.com (Postfix) with ESMTPS
 id B77A4A20FD; Sat,  7 Mar 2020 11:30:49 +0000 (UTC)
Received: from EX13D04EUB003.ant.amazon.com (10.43.166.235) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1236.3; Sat, 7 Mar 2020 11:30:49 +0000
Received: from EX13D04EUB003.ant.amazon.com (10.43.166.235) by
 EX13D04EUB003.ant.amazon.com (10.43.166.235) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Sat, 7 Mar 2020 11:30:46 +0000
Received: from EX13D04EUB003.ant.amazon.com ([10.43.166.235]) by
 EX13D04EUB003.ant.amazon.com ([10.43.166.235]) with mapi id 15.00.1497.006;
 Sat, 7 Mar 2020 11:30:46 +0000
From: "Spassov, Stanislav" <stanspas@amazon.de>
To: "Spassov, Stanislav" <stanspas@amazon.de>, "rafael@kernel.org"
 <rafael@kernel.org>
Subject: Re: [PATCH v3 07/17] PCI: Clean up and document PM/reset delays
Thread-Topic: [PATCH v3 07/17] PCI: Clean up and document PM/reset delays
Thread-Index: AQHV9HPXqrNJUMOXV0awv4Rv3HN/bA==
Date: Sat, 7 Mar 2020 11:30:45 +0000
Message-ID: <575f12241914cc6fa48e250f24db92af560cc375.camel@amazon.de>
References: <20200303132852.13184-1-stanspas@amazon.com>
 <20200303132852.13184-8-stanspas@amazon.com>
 <CAJZ5v0gD4XweLHQzQfRiBxWz8O5mFsc5Chj4JNhX+5ja6Cxrig@mail.gmail.com>
In-Reply-To: <CAJZ5v0gD4XweLHQzQfRiBxWz8O5mFsc5Chj4JNhX+5ja6Cxrig@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.164.196]
Content-ID: <1C301443B08B384BA0AF6268820C3620@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_033059_861994_620D9A0A 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "rajatja@google.com" <rajatja@google.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "ashok.raj@intel.com" <ashok.raj@intel.com>,
 "lenb@kernel.org" <lenb@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "Schoenherr,
 Jan H." <jschoenh@amazon.de>, "okaya@kernel.org" <okaya@kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "thomas.petazzoni@bootlin.com" <thomas.petazzoni@bootlin.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "amurray@thegoodpenguin.co.uk" <amurray@thegoodpenguin.co.uk>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>, "lkp@intel.com" <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-03-03 at 20:03 +0100, Rafael J. Wysocki wrote:
> 
> What "magic numbers" exactly do you mean?  The SRIOV and FLR delays?
> Why not to be more specific here if so?

You are right. I am extending the commit message like this for the next version:

    PCI: Clean up and document PM/reset delays
    
    The existing set of PCI_PM_* constants has some inconsistencies (_WAIT
    vs _DELAY suffix), and does not cover all the scenarios that the PCIe
    specifications mandates waiting periods for.
    
    In preparation for adding infrastructure to override, on a per-device
    basis, the individual waiting periods using standardized mechanisms,
    this commit introduces and documents constants providing the default
    values for various waiting scenarios all around PCI device resets,
    PM state changes, and enabling SR-IOV VFs.
    
    Several instances of 'msleep(100)' in the FLR and VF enable codepaths
    have been adjusted to use the newly introduced constants instead.
    Corresponding explanatory code comments were removed, as they are now
    superseded by the documentation of the constants.



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
