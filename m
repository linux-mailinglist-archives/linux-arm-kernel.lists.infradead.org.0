Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5A812F2AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 02:21:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iZQ3LsfzNrFKW0B3qqLBkqVZ+na/qpjoEmY7w++Hy2o=; b=XEMG75r8yR5SvL
	YYDT17y0pJ20oYDPTpFdZxFMTIzh00x7ELGrlAS8NnYgDp50+340u1szhxl8badxJTzfPzDF/1Pkd
	M4+k6eYGucNoxnSd4DJ+tMVY5ACnRCSGNKDkmqcSEokP+Xhg+DQNOzL1Qop/WdVv57lasJvA43DQz
	6HeBeY3JcIzP51b+sNxSVlhn7fK7mkO2coTm1Uz0Lkg3smetjUN6dElkig707fkD28AmpYyedX/Gh
	LATm23nZeMYuDJuOUx8VpaUsO2ZMcPhgdgSgmNA9FRwXvz0Bka+lygjGEyn+btXVrq3klbgiL3mRT
	WrYZun0aAg1cdLMzMykQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inBeA-0006bK-NH; Fri, 03 Jan 2020 01:21:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inBe4-0006aq-A8
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 01:20:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id k25so22699358pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 17:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=iPY8DonFEvaslZITm1PPK8VeIN05fhFDyPqLfWySPpI=;
 b=jXRjaTQwgRDYEVu8ADx9goMMyad9kCOAIf4eUg61yAVUcLwjnjGNBDBdK/eFHOy4qH
 hJov6B6ndqk+qNScsR9poV+FXGN8zh5L2yxQJIfB0fpLo5VRxBADw0AwpIZ5fnT+Hz38
 wvIOWK8aqUCCdh6jNg449gb7xfJv0ppdbP32xULiMZ9ymmdhlQAYH6pzm/yp1JItJye/
 1Rk+rR2aUB2o4OEMF9UYNrY2zZckoB2LMZZALfHWJJNvu6362qKLWC5Blq4lWOqncJOO
 4erFENLSObRkafLTaS5EcQf+WEsPdmNH0Eki6WDL3ygsI42KeF0N9IGp/MpAozHtIUfz
 RR/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=iPY8DonFEvaslZITm1PPK8VeIN05fhFDyPqLfWySPpI=;
 b=rfXzZ2AWo1TLZwcuLiyeM8tBD7Bwb0ueVN4sNqXupDw3Iyo+YnIMP++VEvwcJeAJed
 jg2pymvYRhaudHqfUHfoGVQqL9l6MTG9Jej4flCPHhSWW6ogUtWeYCY9tcFoukEljxkU
 BFnT4dKMlPKISGcTYQ3+SWmJzQF24ssYvd9kWHAqgOGBu7/p8YDY0jIL29FuefQYzNdg
 9QU7l4Uh9JFesIDopWjfWHrOQ702KIF88FmHAVnSzGVD6gIA4fBXA0nbvw4DTWBd5+PK
 0PN+aZZ7WCWVr4RDeTXHvRxB0bvViSJhSOtrwVO2QKyRYHPqFqm+Yg5B932+WK8peL9m
 6tEQ==
X-Gm-Message-State: APjAAAX9RZEx9HjACMU6EaG1U32qBz6f4lT71AAkfuGZ+GwGcoL5jLPh
 hcsNCX6afRBAZ2QGuuQ1WJM=
X-Google-Smtp-Source: APXvYqxd6ZxVhx9DaLcQylwATIY8jZP4Z3jP43AFyDvRtje352jdjg8y/Sjwo4w70QrE7otE6EFQ1w==
X-Received: by 2002:a65:6794:: with SMTP id e20mr92694645pgr.152.1578014454937; 
 Thu, 02 Jan 2020 17:20:54 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id r37sm12215963pjb.7.2020.01.02.17.20.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 17:20:54 -0800 (PST)
Date: Thu, 2 Jan 2020 17:20:53 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Patrice Chotard <patrice.chotard@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] tty: st-asc: switch to using devm_fwnode_gpiod_get()
Message-ID: <20200103012053.GA1968@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_172056_353793_334FA0D6 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_fwnode_get_gpiod_from_child() is going away as the name is too
unwieldy, let's switch to using the new devm_fwnode_gpiod_get().

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/tty/serial/st-asc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/tty/serial/st-asc.c b/drivers/tty/serial/st-asc.c
index fb6bbb5e22344..3a533a0f172bd 100644
--- a/drivers/tty/serial/st-asc.c
+++ b/drivers/tty/serial/st-asc.c
@@ -566,11 +566,11 @@ static void asc_set_termios(struct uart_port *port, struct ktermios *termios,
 			pinctrl_select_state(ascport->pinctrl,
 					     ascport->states[NO_HW_FLOWCTRL]);
 
-			gpiod = devm_fwnode_get_gpiod_from_child(port->dev,
-								 "rts",
-								 &np->fwnode,
-								 GPIOD_OUT_LOW,
-								 np->name);
+			gpiod = devm_fwnode_gpiod_get(port->dev,
+						      of_fwhandle_node(np),
+						      "rts",
+						      GPIOD_OUT_LOW,
+						      np->name);
 			if (!IS_ERR(gpiod))
 				ascport->rts = gpiod;
 		}
-- 
2.24.1.735.g03f4e72817-goog


-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
