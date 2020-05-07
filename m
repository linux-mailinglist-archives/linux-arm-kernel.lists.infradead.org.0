Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0D31C8585
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r4CwuG2RF04LASW3tNEdrYYhpocg1wHU13PWVqGy9Dg=; b=hcThS6K7HP6aa2xb9ieZbkPdcj
	4YKi69XUt2MZt+EjTArVxPtGcjEYoMkOBbI7cEQV7xqL72fUYugEca3379WhoNavRe3mIAGpuuc+a
	Lj/XNuPLuK0Nnn9COkJms364/VJJ4C64Dc6KAQwxlqc/SMn9mwcN0EoFGKExWJkint439GCk6YahQ
	X0cgb+fYtBYjllRjSOdRRZkuWQG5pOblmVcSimimHu5/7a82I2TcynXhz8HJWultv5VaLq/fZ37X1
	io0WFXgm02b2uADpKCbGuDvvdrY7SdeU9jCRO8QXGT/rS4bmd20iAyfHX+xl6hVWc+FTKZO/nOO9u
	kOQ9d6+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcdt-0007Qm-ER; Thu, 07 May 2020 09:16:33 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcdl-0007Pu-GB
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:16:27 +0000
Received: by mail-pf1-x435.google.com with SMTP id x15so2741567pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 02:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1KzhO/ACECx0/dr+gtbAvw5TnzOduSA4Deti3fiFsj4=;
 b=gd81d8AEVygmBWV4uBrIRxZAPQpzmNitA0DwI6a8WA2ft8QnWGMSpNqYWkC56oUXPI
 8rC9iQWvdUKOUwqNld0DJJIg/ADC88MYJ3+T+wKtc+lU+DgVqudREKvHirbDeRAdQeFj
 Fn4CWdq7Y//hWireUffGioHQuzz8aLjpliAzi6zwheRqMR+MZhb2E/6N4qWmQE2enta7
 YbKNTn8A4UBhoUAnE+B7FTN9h6YdcTBjSCNgByXJHw04EayhIoqX/Ak9fQHExJqmV3jF
 JOjtvQTvqu0F1f9cHxZX3SiFOOmiqmw81dOePciD9dxbOvrWrkG+en8ZRMcHi/JMZbkY
 fvrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1KzhO/ACECx0/dr+gtbAvw5TnzOduSA4Deti3fiFsj4=;
 b=b2peSojB5/GgaHDaSpuk2ohikDEYMnKUvp22QnTGzJplFBs9z6yq1i72a3K7M4oHIe
 aEnv2zqTRgxJ6o//g9zromnHpZhqisAsqmrNh6qQH7rJm+0ZD+dDBF9GZLxzp5Yo6TXI
 4ddgqdyIpREie0OUxeFXt07S3snF78GM0p6d17lY9Fx75MnxCemwu/BZLOTNd9vuUIRQ
 Qy/QrFnPSLPgLuFufnNgJ9VoLtZviuUfiil6Ty3KQGrLAFLz56Q6xVkKFBqwCU5SOajS
 8b5NADFkfUW0Wil5xrVCXCSbezmIzmh6IqCKgOu9Yg1t+4szWMpLpYbRrTGR0vITTh0G
 Hl2Q==
X-Gm-Message-State: AGi0PuagHCE7ThbvgmUgfsktks8+QqqtY4unVmd4wvx+O3aRFh3Bsmmi
 e+YPOv5WV1BWsb1gXmSV13o=
X-Google-Smtp-Source: APiQypIJtHkul5mTY+BSnA1xpHhQ03Lmx87fCT6Ex3npB1S/4ZvMkG814rEtcY8RcbGOdGl8EYTHJw==
X-Received: by 2002:a63:d74a:: with SMTP id w10mr4015942pgi.417.1588842983418; 
 Thu, 07 May 2020 02:16:23 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id m8sm660100pjz.27.2020.05.07.02.16.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 02:16:23 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco board
Date: Thu,  7 May 2020 17:16:10 +0800
Message-Id: <1588842971-20495-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <philippe.schenker@toradex.com>
References: <philippe.schenker@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_021625_910506_B8470C75 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco board

remove id, blocks, irq-trigger from the stmpe mfd dts node.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
