Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790C01D68AC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 17:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tPlEJR+v69/Ko1PFtY/WYHKJ3c5nukqIzQs2APD/j3s=; b=HlKoAoQl7nokGy
	fqwrED1BfLUYEZowsYBGtbmWd2u2s/dHWxCsiJPYS0lo2+tqmdp9sH2TeHyt2rBW/07x4t/oKGjg8
	dHtzHLIB/Z1bWf4sjNIZQpjbjGwRyyNJI9OUzVEcX5ddL9hV1AI/1QJEGzv8rlU27qB4x3VEuC1tY
	Omf5no8aIMvc3w7p4L8Bz9VrUc0oNBArslu/S4bc6JbonJH1wLXUTlSGVkdjeSPn96GSGqAfKHlSr
	9loYrmg6HIKgwSDK9PhXi7yWXHGVxT1H+1aIDER6q/Do9j5G3T2+l49010h//QgDQbVa2QitEPGfX
	inYhGemS7MsY9q9pl/sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaLOv-0001kV-1y; Sun, 17 May 2020 15:40:29 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaLOm-0001jC-87
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 15:40:22 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 21AEA5C007B;
 Sun, 17 May 2020 11:40:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 17 May 2020 11:40:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=SvumGBVOXeG8y7i/6ajg6+QVL/
 4DjwHReqiJL3CMBSU=; b=bD8nr86mQlZ1IFGONAt9UqXXYcAXk4XkSxucApqwr0
 jN8//UnWL5Whf37f1CGDRmwoVpelOr+SRVXtrfHYC0TbXzcwCxZqvcm15/BU2KCQ
 sUlV74Ma8tYFGOLwqxiyQB1ztcjBtBPjT8uQcT6Rp9EI5UGwd1Y73mTeEEjQfZ9g
 OXavYsqRKlf87sRBQamI1LL3tENdobe0jIgWGxCNuHbermmHZpc91W3P1lXl3uJx
 Pnt3WwmJ6tEPxlEcqXFhxnfbLKoi6RzZ1tE+ofcUMAX+b1XaiiXFe1/t6MXxfdk9
 aEWrw8QTHiAxMB541ODIl9W0U0iHZiZq3WT9NPUAJhdg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SvumGBVOXeG8y7i/6
 ajg6+QVL/4DjwHReqiJL3CMBSU=; b=zTmTPNi9ucpuFOHvEn6iu5BeXJ0oJ4p4C
 CUmJebGOngCGr5jhBNrCwYtuNd1Pe5ZHd50npmlRACWSzAH6KZzrJMsH1V3geGI7
 smOxqMd1TCAFX4qcIBOoujz5PFUvgZyeKVWHxokL2Bb133rRTekvC9zcyQQVmv6S
 N6UTWwNju1Rqwd3rsl03IG/YdYnxS5ZU27H2UAuepbdH2mrMnJjw09Bo1Q9MwQGB
 ku625hffMnd0KCdneM+CQT4cuZypjLkR96agY2tbpyHot5wTpcsSxLBs5sEFYxu/
 qVr2/W4HfnubH6JbFyjgzfJuE2fqpmCGigZJR17pmkdeAmsrqe21A==
X-ME-Sender: <xms:2lrBXts74oOx0OYXeuMD4sgYcH8w3-xAiUOACQReVAaI2ZekXZ-SKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtfedgleduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuggftrfgrthhtvghrnhepkefhieffjeevfeevhedtieeihfefvdejle
 dvvddthefftedujeethfeuueelfedtnecukfhppedugedrvddrieeirdduvddvnecuvehl
 uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifse
 grjhdrihgurdgruh
X-ME-Proxy: <xmx:2lrBXmda9Mgy54j2iciAs34_CUCLiCEaPG69vJzTaAy5081yctcMbA>
 <xmx:2lrBXgxgl7lp9SKa8J7gZz99fkxMqFi4vlNTm2xwQTmyAeXcq8r9IQ>
 <xmx:2lrBXkMZsj28PAIMjQVXM_Mg73iCna1KQvH_GL4JO93flQQjqqj7Xw>
 <xmx:3VrBXoaJJUUEelfxTT3HM6N9j9GXlJrGC0f7KqGd8F9yU9RHCGm4yw>
Received: from mistburn.lan
 (ppp14-2-66-122.adl-apt-pir-bras31.tpg.internode.on.net [14.2.66.122])
 by mail.messagingengine.com (Postfix) with ESMTPA id CD2A43280059;
 Sun, 17 May 2020 11:40:07 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: kprobes: Avoid fortify_panic() when copying optprobe
 template
Date: Mon, 18 May 2020 01:09:59 +0930
Message-Id: <20200517153959.293224-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_084020_549976_3C8771A9 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: keescook@chromium.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mathieu.desnoyers@efficios.com, mhiramat@kernel.org, labbott@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting both CONFIG_KPROBES=y and CONFIG_FORTIFY_SOURCE=y on ARM leads
to a panic in memcpy() when injecting a kprobe despite the fixes found
in commit e46daee53bb5 ("ARM: 8806/1: kprobes: Fix false positive with
FORTIFY_SOURCE") and commit 0ac569bf6a79 ("ARM: 8834/1: Fix: kprobes:
optimized kprobes illegal instruction").

arch/arm/include/asm/kprobes.h effectively declares
the target type of the optprobe_template_entry assembly label as a u32,
which leads memcpy()'s __builtin_object_size() call to determine that
the pointed-to object is of size four. In practical terms the symbol is
used as a handle for the optimised probe assembly template that is at
least 96 bytes in size. The symbol's use despite its type blows up the
memcpy() in ARM's arch_prepare_optimized_kprobe() with a false-positive
fortify_panic() when it should instead copy the optimised probe template
into place.

As mentioned, a couple of attempts have been made to address the issue
by casting a pointer to optprobe_template_entry before providing it to
memcpy(), however gccs such as Ubuntu 20.04's arm-linux-gnueabi-gcc
9.3.0 (Ubuntu 9.3.0-10ubuntu1) see through these efforts.

Squash the false-positive by aliasing the template assembly with a new
symbol 'arm_optprobe_template'; declare it as a function object and
pass the function object as the argument to memcpy() such that
__builtin_object_size() cannot immediately determine the object size.

Fixes: e46daee53bb5 ("ARM: 8806/1: kprobes: Fix false positive with FORTIFY_SOURCE")
Fixes: 0ac569bf6a79 ("ARM: 8834/1: Fix: kprobes: optimized kprobes illegal instruction")
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/include/asm/kprobes.h    | 7 +++++++
 arch/arm/probes/kprobes/opt-arm.c | 4 +++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/kprobes.h b/arch/arm/include/asm/kprobes.h
index 213607a1f45c..94db8bf25f9c 100644
--- a/arch/arm/include/asm/kprobes.h
+++ b/arch/arm/include/asm/kprobes.h
@@ -43,6 +43,13 @@ int kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr);
 int kprobe_exceptions_notify(struct notifier_block *self,
 			     unsigned long val, void *data);
 
+/*
+ * The optprobe template buffer is not anything that should be called directly,
+ * however describe it as a function to give ourselves a handle to it that
+ * bypasses CONFIG_FORTIFY_SOURCE=y sanity checks in memcpy().
+ */
+extern __visible void arm_optprobe_template(void);
+
 /* optinsn template addresses */
 extern __visible kprobe_opcode_t optprobe_template_entry;
 extern __visible kprobe_opcode_t optprobe_template_val;
diff --git a/arch/arm/probes/kprobes/opt-arm.c b/arch/arm/probes/kprobes/opt-arm.c
index 7a449df0b359..59133d59616a 100644
--- a/arch/arm/probes/kprobes/opt-arm.c
+++ b/arch/arm/probes/kprobes/opt-arm.c
@@ -31,6 +31,8 @@
  * to the stack cost of the instruction.
  */
 asm (
+			".global arm_optprobe_template\n"
+			"arm_optprobe_template:\n"
 			".global optprobe_template_entry\n"
 			"optprobe_template_entry:\n"
 			".global optprobe_template_sub_sp\n"
@@ -234,7 +236,7 @@ int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *or
 	}
 
 	/* Copy arch-dep-instance from template. */
-	memcpy(code, (unsigned long *)&optprobe_template_entry,
+	memcpy(code, arm_optprobe_template,
 			TMPL_END_IDX * sizeof(kprobe_opcode_t));
 
 	/* Adjust buffer according to instruction. */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
