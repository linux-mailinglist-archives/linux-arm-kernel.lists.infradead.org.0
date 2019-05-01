Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A052109D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNJXe4zxpW1/u2LEJj0kAIs8EArLD3MEHDZaYEmSL2c=; b=ERTTg2W74aMZ8g
	gdPJGD1+4cD5FSH9hu2i8vlU4p1JqvJDaM3oPkrnHzt+TSIus5Z7rhqxm4H/0vnHz4c0qtBBshFpO
	xDDvxiqcuAc1ap0Ptxxbq/600OfDN1HCtD3DdzoGVXyT3UxapiMGSnrO9j2gWQlEG5Hi6QcZHek8R
	zYtPNl37LFgSXpmNPFo0Ov34O6opUzxqhOh3MgGkg8YZmDMNb2HrJ7HKsWyKHUSTbmrenE819K8/O
	3S4nu3bkRu4ktriM5R3Ru+zA5kEpGr6VxxwBEnFqW3zIFy6kmgBS7Po7LXVA0SOLCu6c58Hsl59sN
	QzY1rgFupXQkKvvF7iMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqrX-0003Jt-RC; Wed, 01 May 2019 15:09:35 +0000
Received: from mail-eopbgr140074.outbound.protection.outlook.com
 ([40.107.14.74] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqrP-0003Ir-0i
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:09:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector1-arm-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KVIaUto0o1xOzIEXPlim+R8bAmrCaOThaSMcdnZ4a5U=;
 b=rGDPQX42VXPtc91W7as0Rt0AbS3x3WqPgHDr/YVxci91tuFNkywf3wkAUCb/CWYErO70ty9qGUR4fD61T4pJiq30We9HCBReqxz87LjGtnWi9rp7TmtEMVNvr4FMn869n+acpOHNfWuep59o5PPWYIvNBh2mevMO5w0n0shg/84=
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com (20.178.84.149) by
 DB7PR08MB3179.eurprd08.prod.outlook.com (52.134.110.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Wed, 1 May 2019 15:09:21 +0000
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::fdd5:e065:ed96:45da]) by DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::fdd5:e065:ed96:45da%3]) with mapi id 15.20.1835.018; Wed, 1 May 2019
 15:09:21 +0000
From: Raphael Gault <Raphael.Gault@arm.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [RFC 3/6] objtool: arm64: Adapt the stack frame checks and the
 section analysis for the arm architecture
Thread-Topic: [RFC 3/6] objtool: arm64: Adapt the stack frame checks and the
 section analysis for the arm architecture
Thread-Index: AQHU7tulYY+OqZKg/k6QJwe1WY2Za6ZKSruAgAFe/4D///XuAIABEJyAgAB5AQCAB6gYgIABsJ8A
Date: Wed, 1 May 2019 15:09:21 +0000
Message-ID: <070a10c3-2d87-7ac8-96ee-95ae71c29df7@arm.com>
References: <20190409135243.12424-1-raphael.gault@arm.com>
 <20190409135243.12424-4-raphael.gault@arm.com>
 <20190423203627.mwnaknit7cvr3l5l@treble>
 <cd86ce1a-7c6a-9ebf-4c84-6cb6ffd88017@arm.com>
 <20190424165640.5yeg2yicl7ej7g3i@treble>
 <c90f402e-6494-73bc-1df8-516c3113019a@arm.com>
 <20190425162528.mnmmierxxvixyoul@treble>
 <9a5f48e4-4846-7a47-48c6-52d937bf01e1@arm.com>
In-Reply-To: <9a5f48e4-4846-7a47-48c6-52d937bf01e1@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0103.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::19) To DB7PR08MB3865.eurprd08.prod.outlook.com
 (2603:10a6:10:32::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Raphael.Gault@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: badb1056-7456-48b8-3a65-08d6ce46fd3a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB3179; 
x-ms-traffictypediagnostic: DB7PR08MB3179:
x-microsoft-antispam-prvs: <DB7PR08MB3179494875A773AA17421B77ED3B0@DB7PR08MB3179.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(136003)(396003)(346002)(40434004)(199004)(189003)(54094003)(486006)(66946007)(6512007)(186003)(3846002)(14454004)(476003)(68736007)(6116002)(5660300002)(256004)(72206003)(66476007)(6246003)(478600001)(53936002)(14444005)(44832011)(30864003)(2616005)(26005)(5024004)(64756008)(229853002)(66556008)(86362001)(31696002)(66446008)(4326008)(11346002)(66066001)(36756003)(6436002)(52116002)(71200400001)(54906003)(71190400001)(446003)(76176011)(25786009)(102836004)(7736002)(8676002)(81166006)(8936002)(305945005)(53546011)(31686004)(6486002)(6506007)(316002)(2906002)(99286004)(386003)(6916009)(81156014)(73956011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3179;
 H:DB7PR08MB3865.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: auoOlagLHspXztuVt9k3YUO217c5JuftOcdhF2wbIXQK4PwvGkONEmoHjx8/wd3Gcyt9Tz7y1YLSuaqb2qaiZD1uS82RnQ3pS3YhzCZzTQcdboFJAiQBOVt6eBHq3ooD1Y5aLCtHUWa+5TN3DbKnO7FD1QcpfscOii3jVfNzC9lnet7CgBgNiThjsvB3+hCiufjI/boWpVMp6NbhW0kdcU8dkYLEf1j+8Fz9yO4ulYPy+hcXvBzykJCi24/fQS2bkzN8wwhpDscA2Uo905lurF9dKhtcEozJHuHfrmJ0/51BAsgzdCi8ALpEegD8jG2bBd0YJ2AZsXfwjqqTDTpKpcPK8MZREUpGulV5CAk2KS+EDdoXg5WqjLiUupiWPFhVSLdA0P75rbqy7gy98t3PlMcFJ83OS5d/HOxDdjoXEzY=
Content-ID: <26AD5616301122428119EE02CBAC40F1@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: badb1056-7456-48b8-3a65-08d6ce46fd3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 15:09:21.2819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_080927_274683_7CC8112B 
X-CRM114-Status: GOOD (  35.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Josh,

On 4/30/19 1:20 PM, Raphael Gault wrote:
> Hi Josh,
>
> On 4/25/19 5:25 PM, Josh Poimboeuf wrote:
>> On Thu, Apr 25, 2019 at 08:12:24AM +0000, Raphael Gault wrote:
>>> Hi Josh,
>>>
>>> On 4/24/19 5:56 PM, Josh Poimboeuf wrote:
>>>> On Wed, Apr 24, 2019 at 04:32:44PM +0000, Raphael Gault wrote:
>>>>>>> diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
>>>>>>> index 0feb3ae3af5d..8b293eae2b38 100644
>>>>>>> --- a/tools/objtool/arch/arm64/decode.c
>>>>>>> +++ b/tools/objtool/arch/arm64/decode.c
>>>>>>> @@ -105,6 +105,33 @@ unsigned long arch_compute_rela_sym_offset(int addend)
>>>>>>>      return addend;
>>>>>>>      }
>>>>>>>
>>>>>>> +/*
>>>>>>> + * In order to know if we are in presence of a sibling
>>>>>>> + * call and not in presence of a switch table we look
>>>>>>> + * back at the previous instructions and see if we are
>>>>>>> + * jumping inside the same function that we are already
>>>>>>> + * in.
>>>>>>> + */
>>>>>>> +bool arch_is_insn_sibling_call(struct instruction *insn)
>>>>>>> +{
>>>>>>> +struct instruction *prev;
>>>>>>> +struct list_head *l;
>>>>>>> +struct symbol *sym;
>>>>>>> +list_for_each_prev(l, &insn->list) {
>>>>>>> +prev = (void *)l;
>>>>>>> +if (!prev->func
>>>>>>> +|| prev->func->pfunc != insn->func->pfunc)
>>>>>>> +return false;
>>>>>>> +if (prev->stack_op.src.reg != ADR_SOURCE)
>>>>>>> +continue;
>>>>>>> +sym = find_symbol_containing(insn->sec, insn->immediate);
>>>>>>> +if (!sym || sym->type != STT_FUNC
>>>>>>> +|| sym->pfunc != insn->func->pfunc)
>>>>>>> +return true;
>>>>>>> +break;
>>>>>>> +}
>>>>>>> +return true;
>>>>>>> +}
>>>>>>
>>>>>> I get the feeling there might be a better way to do this, but I can't
>>>>>> figure out what this function is actually doing.  It looks like it
>>>>>> searches backwards in the function for an instruction which has
>>>>>> stack_op.src.reg != ADR_SOURCE -- what does that mean?  And why doesn't
>>>>>> it do anything with the instruction after it finds it?
>>>>>>
>>>>>
>>>>> I will indeed try to make it better.
>>>>
>>>> I still don't quite get what it's trying to accomplish, but I wonder if
>>>> there's some kind of tracking you can add in validate_branch() to keep
>>>> track of whatever you're looking for, leading up to the indirect jump.
>>>>
>>>
>>> The motivation behind this is that the `br <Xn>` instruction is a
>>> dynamic jump (jump to the address contained in the provided register).
>>> This instruction is used for sibling calls but can also be used for
>>> switch table. I use this to differentiate these two cases from one another:
>>>
>>> Generally the `adr/adrp` instruction is used prior to `br` in order to
>>> load the address into the register. What I do here is go back throught
>>> the instructions and try to identify if the address loaded.
>>>
>>> I also thought of implementing some sort of tracking in validate branch
>>> because it could be useful for identifying the switch tables as well.
>>> But it seemed to me like a major change in the sementic of this tool:
>>> indeed, from my perspective I would have to track the state of the
>>> registers and I don't know if we want to do that.
>>
>> I don't have much time to look at this today (and I'll be out next
>> week), but we had a similar problem in x86.  See the comments above
>> find_switch_table(), particularly #3.  Does that function not work for
>> the arm64 case?
>>
>
> Honestly, I don't have a full understanding of how the switch tables are
> handled on arm64. All I know is that I've identified a case in which it
> doesn't work (and I get an unreachable instruction warning).
> When trying to figure out how the switch tables work on arm64 and how
> objtool is retrieving them (on x86 at least) I realised that you look
> for 2 relocations :
> - One from (.rela).text which refers to the .rodata section
> - One from (.rela).rodata which refers somewhere else.
> On the case I identified the second relocation doesn't exist thus the
> function doesn't find the switch table.
>
> Again since I do not have a good understanding about this I am not able
> to say if it is a corner case or not.
>
>>>>>>> -hash_add(file->insn_hash, &insn->hash, insn->offset);
>>>>>>> +/*
>>>>>>> + * For arm64 architecture, we sometime split instructions so that
>>>>>>> + * we can track the state evolution (i.e. load/store of pairs of registers).
>>>>>>> + * We thus need to take both into account and not erase the previous ones.
>>>>>>> + */
>>>>>>
>>>>>> Ew...  Is this an architectural thing, or just a quirk of the arm64
>>>>>> decoder?
>>>>>>
>>>>>
>>>>> The motivation for this is to simulate the two consecutive operations
>>>>> that would be executed on x86 but are done in one on arm64. This is
>>>>> strictly a decoder related quirk. I don't know if there is a better way
>>>>> to do it without modifying the struct op_src and struct instruction.
>>>>
>>>> Ah.  Which ops are those?  Hopefully we can find a better way to
>>>> represent that with a single instruction.  Adding fake instructions is
>>>> fragile.
>>>>
>>>
>>> Those are the load/store of pairs of registers, mainly stp/ldp. Those
>>> are often use in the function prologues/epilogues to save/restore the
>>> stack pointers and frame pointers however it can be used with any
>>> register pair.
>>>
>>> The idea to add a new instruction could work but I would need to extend
>>> the `struct op_src` as well I think.
>>
>> Again I don't have much time to look at it, but I do think that changing
>> op_src/dest to allow for the stp/ldp instructions would work better than
>> inserting a fake instruction to emulate x86.
>>
>> Or another idea would be to associate multiple stack_ops with a single
>> instruction.
>>
>
> I haven't looked at it in depth yet but I will try to figure out a good
> way to represent those instructions on a more proper manner.

I wanted to get your thoughts on the solution I found without waiting
for v2. If it's too much trouble reviewing it now I'll wait for the v2.

I added a field to the struct stack_op in order to have access to an
extra register. This way I can provide the extra register to the instruction
in order to use it later.

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index 52599ebd89fb..ae9ae25b3bdc 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -51,6 +51,7 @@ struct op_dest {
  int offset;
  };

+
  enum op_src_type {
  OP_SRC_REG,
  OP_SRC_REG_INDIRECT,
@@ -66,9 +67,16 @@ struct op_src {
  int offset;
  };

+struct op_extra {
+unsigned char used;
+unsigned char reg;
+int offset;
+};
+
  struct stack_op {
  struct op_dest dest;
  struct op_src src;
+struct op_extra extra;
  };

  struct instruction;
diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 17b5d59f16ad..86ad37c8397c 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -1743,23 +1673,26 @@ int arm_decode_ld_st_regs_pair_off(u32 instr, unsigned char *type,
  op->src.type = OP_SRC_REG_INDIRECT;
  op->src.reg = CFI_SP;
  op->src.offset = 0;
-state.curr_offset = 8;
  op->dest.type = OP_DEST_REG;
-op->dest.reg = state.regs[0];
+op->dest.reg = rt;
  op->dest.offset = 0;
+op->extra.used = 1;
+op->extra.reg = rt2;
+op->extra.offset = 8;
  break;
  default:
  op->dest.type = OP_DEST_REG_INDIRECT;
  op->dest.reg = CFI_SP;
  op->dest.offset = 8;
-state.curr_offset = 0;
  op->src.type = OP_SRC_REG;
-op->src.reg = state.regs[1];
+op->src.reg = rt2;
  op->src.offset = 0;
+op->extra.used = 1;
+op->extra.reg = rt;
+op->extra.offset = 0;
  /* store */
  }
-state.op = *op;
-return INSN_COMPOSED;
+return 0;
  }

  int arm_decode_ld_st_regs_pair_post(u32 instr, unsigned char *type,
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 5ddb25414de5..df1fb6ce1e8f 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1580,6 +1569,18 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
      initial_func_cfi.cfa.base == CFI_CFA)
  cfa->base = CFI_CFA;

+if (op->extra.used) {
+if (regs[op->extra.reg].offset == -state->stack_size)
+restore_reg(state, op->extra.reg);
+state->stack_size -= 8;
+if (cfa->base == CFI_SP)
+cfa->offset -= 8;
+if (cfa->base == CFI_SP &&
+    cfa->offset == 0 &&
+    initial_func_cfi.cfa.base == CFI_CFA)
+cfa->base = CFI_CFA;
+}
+
  break;

  case OP_SRC_REG_INDIRECT:
@@ -1598,12 +1599,22 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
  /* drap: mov disp(%rbp), %reg */
  restore_reg(state, op->dest.reg);

+if (op->extra.used &&
+    op->src.reg == CFI_BP &&
+    op->extra.offset == regs[op->extra.reg].offset)
+restore_reg(state, op->extra.reg);
+
  } else if (op->src.reg == cfa->base &&
      op->src.offset == regs[op->dest.reg].offset + cfa->offset) {

  /* mov disp(%rbp), %reg */
  /* mov disp(%rsp), %reg */
  restore_reg(state, op->dest.reg);
+
+if (op->extra.used &&
+    op->src.reg == cfa->base &&
+    op->extra.offset == regs[op->extra.reg].offset + cfa->offset)
+restore_reg(state, op->extra.reg);
  }

  break;
@@ -1653,6 +1664,21 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
  save_reg(state, op->src.reg, CFI_CFA, -state->stack_size);
  }

+if (op->extra.used) {
+state->stack_size += 8;
+if (cfa->base == CFI_CFA)
+cfa->base = CFI_SP;
+if (cfa->base == CFI_SP)
+cfa->offset += 8;
+if (!state->drap ||
+    (!(op->extra.reg == cfa->base &&
+       op->extra.reg == state->drap_reg) &&
+     !(op->extra.reg == CFI_BP &&
+       cfa->base == state->drap_reg) &&
+     regs[op->extra.reg].base == CFI_UNDEFINED))
+save_reg(state, op->extra.reg, CFI_CFA,
+ -state->stack_size);
+}
  /* detect when asm code uses rbp as a scratch register */
  if (!no_fp && insn->func && op->src.reg == CFI_BP &&
      cfa->base != CFI_BP)
@@ -1671,11 +1697,19 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
  /* save drap offset so we know when to restore it */
  state->drap_offset = op->dest.offset;
  }
+if (op->extra.used && op->extra.reg == cfa->base &&
+    op->extra.reg == state->drap_reg) {
+cfa->base = CFI_BP_INDIRECT;
+cfa->offset = op->extra.offset;
+}

  else if (regs[op->src.reg].base == CFI_UNDEFINED) {

  /* drap: mov reg, disp(%rbp) */
  save_reg(state, op->src.reg, CFI_BP, op->dest.offset);
+if (op->extra.used)
+save_reg(state, op->extra.reg, CFI_BP,
+ op->extra.offset);
  }

  } else if (op->dest.reg == cfa->base) {
@@ -1684,8 +1718,12 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
  /* mov reg, disp(%rsp) */
  save_reg(state, op->src.reg, CFI_CFA,
   op->dest.offset - state->cfa.offset);
+if (op->extra.used)
+save_reg(state, op->extra.reg, CFI_CFA,
+ op->extra.offset - state->cfa.offset);
  }

+
  break;

  case OP_DEST_LEAVE:

Thanks,

--
Raphael Gault
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
