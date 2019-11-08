Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2483EF3FB9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMPCChZjAM/qJpYIj3odC5YgQDbMSOYy/+lwOmGACDE=; b=nc6GQ0/Y2fY1AD
	/lBKBFz4lKoqO7LQmJJqkNdYvy4nAssmTdYsmFZJzZtphry2ulYyyo1dahteKqtmGJ0/9P8iDJvMJ
	FwGzemYjcC9K8BitQ6mhXQhfzxq79pc8Miqfu/Myj3i+S7+4h08WFde3DpckFBccneV6kVeaxNDK1
	XE2MhnfRctNjVc10FWtF+BIk1PL4/jBtC+bqobdgYfAHd89voJ11tCzZnSmZXx7vCBLsD2HMlF6LF
	4ps9Bp1ggcKX1zJeTY3RrwJcvfuHFz/lq1abtiaH2bbiU97zPqvzmXjPHXhKhCF//I0OSucvb/0ht
	9Ja4/MrwYJAFe5O8SbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwhp-0003gj-5m; Fri, 08 Nov 2019 05:21:09 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwgy-00033h-3L
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:19 +0000
Received: by mail-pl1-x62f.google.com with SMTP id k7so3285855pll.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YuW1ipLzZ/2+gNhmz9GQaaZr1Idsk5f88aGw6tJt1FE=;
 b=h/Htgv05sKRRazJUllEnoeg0JF9DrJfLx+QhhEnGCfV+4oK3XW71fEWR6xZFnu8rba
 6l8xLBJWxW51VlEMz/bBR/OiaKWExGgNlNwSMPVRdc3z8I28eVuvr3RFE59DHmKQYBdr
 sTp4QRQN3orrHUh6AamiEiArid/lOOJqqdhi+a5G2i/o+iL851mAR7eWQVMQ8Yr6aYTb
 9ep/S4IbA9aGJpML1MvscFH/stjhsyXwD9dCW+ad5s5+VOb9Pg5Gmamg5f9wkXNHaRK1
 3Y7YYfDylifVoNKxvhBOG1r0ggRH0ccAI7Rx0ZTyx6N4PHc/dkabFgMdcCp8cjsXMfAH
 yuOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=YuW1ipLzZ/2+gNhmz9GQaaZr1Idsk5f88aGw6tJt1FE=;
 b=BAf+ujZJBwNbZdAbIuUVVHI9SjmG6R8IxdyqehIzlIw/7CUb0yf1l6XDRDfC1AdqXK
 8q/266P/y3KfWW2CQx4oDP/Gfy8VxSHil0z+MBzkk0nJrWD8RJ3HS9627ViDLkROS+EU
 QRKoB7KQsa9a9nLBh6hY5iqRp3ydIFQYjRH1lethOtQFnNgIbs5yCyOYWPDmA1PLrKlC
 8HXQKFU8d5Ud7nru5Hp+izWcWuqQlTd3gK+989rbEsveWw83qETHPdMXRpwJheTlSilz
 HujJCuhUxnp6LKtuPqArQA4rwUcvC4DR4korUKhsRElGAc1mV3PS7BSdo7e4RkSNjs31
 xGmw==
X-Gm-Message-State: APjAAAWQfU82cEdo56DyfJGmUDUfW9GK3l3PfdVjLMtx421uvtkIops6
 e2J5AzL/qw0G8tjAPcF+LzQ=
X-Google-Smtp-Source: APXvYqw3gu0p58jR3NALir+s/tOHFoe/Ibt9ItE1rMD3EBHbggifQSaQFtnZBgen2qwmkQOVnP1H1Q==
X-Received: by 2002:a17:90a:24b:: with SMTP id
 t11mr10871279pje.77.1573190414746; 
 Thu, 07 Nov 2019 21:20:14 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:14 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 03/11] ABI: Update FSI path documentation
Date: Fri,  8 Nov 2019 15:49:37 +1030
Message-Id: <20191108051945.7109-4-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212016_806137_B1DEAFF6 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The paths added back in 4.13 weren't quite correct. The in reality the
files documented lived under

  /sys/devices/../fsi0/rescan
  /sys/devices/../fsi0/break
  /sys/devices/../fsi0/slave@00:00/term
  /sys/devices/../fsi0/slave@00:00/raw

In 5.5 with the addition of the FSI class they move to

  /sys/devices/../fsi-master/fsi0/rescan
  /sys/devices/../fsi-master/fsi0/break
  /sys/devices/../fsi-master/fsi0/slave@00:00/term
  /sys/devices/../fsi-master/fsi0/slave@00:00/raw

This is closer to how the (incorrect) documentation described them.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/ABI/testing/sysfs-bus-fsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-fsi b/Documentation/ABI/testing/sysfs-bus-fsi
index 57c806350d6c..320697bdf41d 100644
--- a/Documentation/ABI/testing/sysfs-bus-fsi
+++ b/Documentation/ABI/testing/sysfs-bus-fsi
@@ -1,25 +1,25 @@
-What:           /sys/bus/platform/devices/fsi-master/rescan
+What:           /sys/bus/platform/devices/../fsi-master/fsi0/rescan
 Date:		May 2017
 KernelVersion:  4.12
-Contact:        cbostic@linux.vnet.ibm.com
+Contact:        linux-fsi@lists.ozlabs.org
 Description:
                 Initiates a FSI master scan for all connected slave devices
 		on its links.
 
-What:           /sys/bus/platform/devices/fsi-master/break
+What:           /sys/bus/platform/devices/../fsi-master/fsi0/break
 Date:		May 2017
 KernelVersion:  4.12
-Contact:        cbostic@linux.vnet.ibm.com
+Contact:        linux-fsi@lists.ozlabs.org
 Description:
 		Sends an FSI BREAK command on a master's communication
 		link to any connnected slaves.  A BREAK resets connected
 		device's logic and preps it to receive further commands
 		from the master.
 
-What:           /sys/bus/platform/devices/fsi-master/slave@00:00/term
+What:           /sys/bus/platform/devices/../fsi-master/fsi0/slave@00:00/term
 Date:		May 2017
 KernelVersion:  4.12
-Contact:        cbostic@linux.vnet.ibm.com
+Contact:        linux-fsi@lists.ozlabs.org
 Description:
 		Sends an FSI terminate command from the master to its
 		connected slave. A terminate resets the slave's state machines
@@ -29,10 +29,10 @@ Description:
 		ongoing operation in case of an expired 'Master Time Out'
 		timer.
 
-What:           /sys/bus/platform/devices/fsi-master/slave@00:00/raw
+What:           /sys/bus/platform/devices/../fsi-master/fsi0/slave@00:00/raw
 Date:		May 2017
 KernelVersion:  4.12
-Contact:        cbostic@linux.vnet.ibm.com
+Contact:        linux-fsi@lists.ozlabs.org
 Description:
 		Provides a means of reading/writing a 32 bit value from/to a
 		specified FSI bus address.
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
